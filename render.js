var http = require('http');
var querystring = require('querystring');
var ejs = require('ejs');

var server = http.createServer(function(req, res){

    if(req.method=='POST'){
      var body = '';
      req.on('data', function(chunk) {
        body += chunk.toString();
      });

      req.on('end', function() {
        var params = querystring.parse(body);
        var template = params['template'];
        var data = params['data'];

        try{
          data = JSON.parse(data);
        }catch(e){
          console.log('500 - unable to parse json data');
          res.writeHead(500, "INTERNAL_SERVER_ERROR");
          res.end();
        }

        if(template==undefined || data==undefined){
          console.log('406 - missing required parameters');
          res.writeHead(406, "NOT_ACCEPTABLE");
          res.end();
        }else{
          console.log('200 - OK');
          res.writeHead(200, "OK", {'Content-Type': 'text/html'});
          res.end(ejs.render(template,data));
        }
      });
    }else{
      console.log('405 - wrong HTTP method');
      res.writeHead(405, "METHOD_NOT_ACCEPTABLE");
      res.end();
    }
});

console.log("Starting Render Server");
server.listen(3000);
