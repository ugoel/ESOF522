var fs = require('fs');
var http = require('http');
var dir = "C/new/";
var conf_rank = "C";

fs.readdir(dir, function (err, files) {
	if (err) {
		throw err;
	}
	else if(files) {
		files.forEach(function(file){
			fs.readFile(dir + file, 'utf8', function (err, data) {
				if (err) {
					return console.log(err);
				}
				else if (data) {
					data = data.replace(/\\ &amp;;/g, " and ");
					data = data.replace(/\\C/g, "C");
					data = data.replace(/\\"/g, "\"");
					data = data.replace(/\\ /g, " ");
					data = data.replace(/&/g, " and ");
					var json_data = JSON.parse(data);
					var object_name_list = Object.keys(json_data.obj);
					for (var loop = 0; loop < object_name_list.length; loop++) {
						var num_citations = json_data.obj[object_name_list[loop]].num_citations;
						var title = (json_data.obj[object_name_list[loop]].title).replace(/ /g, "%20");
						var year = json_data.obj[object_name_list[loop]].year;
						var publication = (json_data.obj[object_name_list[loop]].publication).replace(/ /g, "%20");
						var options = {
							host: 'www.cs.montana.edu',
							path: '/~utkarsh.goel/scripts/esof/citation.php?num_citations=' + num_citations + '&year=' + year + '&publication=' + publication + '&conf_rank=' + conf_rank + '&title=' + title
						};
						console.log(options);
						http.request(options).end();
					}
				}
			});
		});
	}
});

