var net = require('net');
var ejs = require('ejs');

var server = net.createServer(function (c) {
  var EOF = new RegExp("\nEOF$");
  var rec_template = '';
  var rec_data = '';
  var message = {};
  var started_at = null;
  c.setNoDelay();

  c.addListener('connect', function(){
    last_directive = null;
    message = { template: null, data: null };
    started_at = new Date()
    console.log( started_at + ' > Starting new render:');
  });

  c.addListener('data', function(data){
    rec = data.toString();

    if(message['template']==null){
      rec_template += rec

      if(EOF.exec(rec_template)!=null){
        message['template'] = rec_template.replace(EOF, '');
        c.write("ok\n");
      }
    }else if(message['data']==null){
      rec_data += rec

      if(EOF.exec(rec_data)!=null){
        message['data'] = rec_data.replace(EOF, '');
      }
    }

    if(message['template']!=null && message['data']!=null){
      // we have all the bits so we can render

      try{
        message['data'] = JSON.parse(message['data']);
        message['data']['_'] = require('underscore');
      }catch(e){
        console.log('  500 - unable to parse json data');
        console.log(e);
        c.write("no thanks\n");
        return;
      }

      try{
        response = ejs.render(message['template'], message['data'])
        var took = new Date() - started_at
        console.log('  200 - render complete in ' + took + 'ms');
        c.write(response);
        c.write("\n");
      }catch(e){
        console.log('  500 - unable to render');
        console.log(e);
        c.write("no thanks\n");
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
