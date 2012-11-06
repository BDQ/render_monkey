var net = require('net');
var ejs = require('ejs');

var server = net.createServer(function (c) {
  var directive_regex = new RegExp("<([a-z]+)>", 'g');
  var last_directive = null;
  var message = { template: null, data: null };
  c.setNoDelay();

  c.addListener('connect', function(){
    last_directive = null;
    message = { template: null, data: null };
    // console.log('connected');
  });

  c.addListener('data', function(data){
    rec = data.toString();

    var match = directive_regex.exec(rec);
    if(match!=null){
      last_directive = match[1];
      c.write("thanks\n");
    }else{
      message[last_directive] = rec;

      if(message['template']!=null && message['data']!=null){
        // we have all the bits so we can render

        try{
          message['data'] = JSON.parse(message['data']);
        }catch(e){
          console.log('500 - unable to parse json data');
          c.write("no thanks\n");
          return;
        }

        response = ejs.render(message['template'], message['data'])
        c.write(response);
        c.write("\n");

      }else{
        c.write("thanks\n");
      }
    }
  });

  c.addListener('error', function(a){
    console.log('err',a);
  });

  c.addListener('end', function(){
    c.end();
  });
});
server.listen('/tmp/yo.sock');
