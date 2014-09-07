// scraper.js
// javscript scraper for github



		url = "https://github.com/lisavogtsf/long_weekend_lab";

		$.get(url, function(data){
  			$('#data').append($('li',data));
		});
		console.log(data);

