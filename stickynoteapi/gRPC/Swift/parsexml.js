var parseString = require('xml2js').parseString
var glob = require("glob")

//Get all xml files.
var getDirectories = function (src, callback) {
  glob(src + '/**/*.xml', callback);
};

getDirectories('build/reports', function (err, res) {
  if (err) {
    console.log('Error', err);
  } else {
    console.log(res);
  }
});



// fs = require('fs');
// fs.readFile( './build/reports/grpc/grpc_1.xml', function(err, data) {
//     parseString((data.toString()), function (err, result) {
//         fs.writeFile ("input.json", JSON.stringify(result), function(err) {
//             if (err) throw err;
//         });   
//     });
//  });