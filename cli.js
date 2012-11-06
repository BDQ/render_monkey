var http = require('http');
var querystring = require('querystring');
var ejs = require('ejs');


var template = process.argv[2]
var data = process.argv[3]

try{
  data = JSON.parse(data);
  data['_'] = require('underscore');
}catch(e){
  console.log('500 - unable to parse json data');
}

if(template==undefined || data==undefined){
  console.log('406 - missing required parameters');
}else{
  console.log(ejs.render(template,data));
}
