var parseString = require('xml2js').parseString
var glob = require("glob")
var fs = require('fs');

/* Produces file paths for .xml files. */
var getAllFilePaths = function (src, callback) {
	glob(src + '/**/*.xml', callback);
};

/* Get all .xml files contained in a folder using glob. */
getAllFilePaths('build/reports', function (err, res) {
	if (err) {
		console.log('Error', err);
	} else {
		processTheFiles(res)
	}
});

/* Process the xml files syncronously and save as a consolidated json file. */
function processTheFiles(filePaths) {
	for (const index in filePaths) {  
		fs.readFile(filePaths[index], function(err, data) {
			parseString((data.toString()), function (err, result) {
				fs.appendFileSync('build/reports/combinedReport.json', JSON.stringify(result));
			});
		});
	}
	console.log('Done');
}