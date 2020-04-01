var parseString = require('xml2js').parseString
var glob = require("glob")
var fs = require('fs');


//Get all xml files. 
var getAllFilePaths = function (src, callback) {
	glob(src + '/**/*.xml', callback);
};

getAllFilePaths('../build/reports', function (err, res) {
	if (err) {
		console.log('Error', err);
	} else {
		processTheFiles(res)
	}
});

/*Process the files and save a consolidated json file*/
function processTheFiles(filePaths) {
	for (const index in filePaths) {  
		fs.readFile(filePaths[index], function(err, data) {
			parseString((data.toString()), function (err, result) {
				fs.appendFile('../build/reports/report.json', JSON.stringify(result), function (err) {
					if (err) throw err;
					console.log('Appended content of: ', filePaths[index]);
				});   
			});
		});
	}
}