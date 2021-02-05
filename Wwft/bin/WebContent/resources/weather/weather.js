
let latitude;
let longitude;
function getLocation() {
	if (navigator.geolocation) { // GPS를 지원하면
	  navigator.geolocation.getCurrentPosition(function(position) {
		latitude = position.coords.latitude;
		longitude = position.coords.longitude;
	
		// alert(latitude + ' ' + longitude);
	  }, function(error) {
		console.error(error);
	  }, {
		enableHighAccuracy: false,
		maximumAge: 0,
		timeout: Infinity
	  });
	} else {
	  alert('GPS를 지원하지 않습니다');
	}
  }
  getLocation();


$(document).ready(function(){

	
	


	// navigator.geolocation.getCurrentPosition(function (position) {
	// 		latitude = position.coords.latitude;
	// 		longitude = position.coords.longitude;
	// 		console.log(latitude)
	// 	})
	  
	
	$.ajax({
		

		url: `http://api.openweathermap.org/data/2.5/forecast?lat=${latitude}&lon=${longitude}&units=metric&appid=9757e2feaa36992cfefe1fef3b91199d`,

		dataType:"json",

		success:function(city){

			// console.log(city);

			$.each(city.list, function(key) {
				// console.log('city.list Size'+city.list.length);
				// console.log('city.list.dt'+city.list.dt);
				// 오늘 날짜 구하는 코딩

				var now = new Date();

			    var year= now.getFullYear();

			    var mon = (now.getMonth()+1)>9 ? ''+(now.getMonth()+1) : '0'+(now.getMonth()+1);

			    var day = now.getDate()>9 ? ''+now.getDate() : '0'+now.getDate();

			    var today = year + '-' + mon + '-' + day;

			    var week = new Array('일', '월', '화', '수', '목', '금', '토');	// 요일

			    

			    // api에서 받는 날짜

			    var date = city.list[key].dt_txt.substring(0,10)

			    var time = city.list[key].dt_txt.substring(11,13)

			    var yoil = new Date(date).getDay();	// 받아 오는 날짜의 요일 일-0 월-1 화-2....

			    var todayLabel = week[yoil];

			    

			    // 최고온도 절대 온도로 받아 옴으로

			    var max=(Math.round(city.list[key].main.temp_max) )+"˚C";

				
				// console.log('데이트는'+date)
			    // 날씨

			    var weath = city.list[key].weather[0].description;

			    console.log('description ;'+weath)

			    if(date === today) {

			    	if(time === '12') {

			    		if (weath === 'clear sky') {

				    		$("#weather").append("<div style='float:left;' class='weather-card'><div class='weather-icon sun'></div><h1>"+max+"</h1><p>"+todayLabel+"</p></div>");

				    	} else if(weath === 'few clouds'){

				    		$("#weather").append("<div style='float:left;' class='weather-card'><div class='weather-icon cloud'></div><h1>"+max+"</h1><p>"+todayLabel+"</p></div>");

				    	} else if(weath === 'scattered clouds'){

				    		$("#weather").append("<div style='float:left;' class='weather-card'><div class='weather-icon cloud'></div><h1>"+max+"</h1><p>"+todayLabel+"</p></div>");

				    	} else if(weath === 'broken clouds'){

				    		$("#weather").append("<div style='float:left;' class='weather-card'><div class='weather-icon cloud'></div><h1>"+max+"</h1><p>"+todayLabel+"</p></div>");

				    	} else if(weath === 'overcast clouds'){

				    		$("#weather").append("<div style='float:left;' class='weather-card'><div class='weather-icon cloud'></div><h1>"+max+"</h1><p>"+todayLabel+"</p></div>");

				    	} else if(weath === 'shower rain'){

				    		$("#weather").append("<div style='float:left;' class='weather-card'><div class='weather-icon rain2'></div><h1>"+max+"</h1><p>"+todayLabel+"</p></div>");

				    	} else if(weath === 'light rain'){

				    		$("#weather").append("<div style='float:left;' class='weather-card'><div class='weather-icon rain2'></div><h1>"+max+"</h1><p>"+todayLabel+"</p></div>");

				    	} else if(weath === 'moderate rain'){

				    		$("#weather").append("<div style='float:left;' class='weather-card'><div class='weather-icon rain2'></div><h1>"+max+"</h1><p>"+todayLabel+"</p></div>");

				    	} else if(weath === 'Rain'){

				    		$("#weather").append("<div style='float:left;' class='weather-card'><div class='weather-icon rain2'></div><h1>"+max+"</h1><p>"+todayLabel+"</p></div>");

				    	} else if(weath === 'Thunderstorm'){

				    		$("#weather").append("<div style='float:left;' class='weather-card'><div class='weather-icon rain2'></div><h1>"+max+"</h1><p>"+todayLabel+"</p></div>");

				    	} else if(weath === 'snow'){

				    		$("#weather").append("<div style='float:left;' class='weather-card'><div class='weather-icon snow2'></div><h1>"+max+"</h1><p>"+todayLabel+"</p></div>");

				    	} else if(weath === 'mist'){

				    		$("#weather").append("<div style='float:left;' class='weather-card'><div class='weather-icon cloud'></div><h1>"+max+"</h1><p>"+todayLabel+"</p></div>");

				    	}

			    	}

			    } else {

			    	if(time === '12') {

			    		if (weath === 'clear sky') {

				    		$("#weather").append("<div style='float:left;' class='weather-card'><div class='weather-icon sun'></div><h1>"+max+"</h1><p>"+todayLabel+"</p></div>");

				    	} else if(weath === 'few clouds'){

				    		$("#weather").append("<div style='float:left;' class='weather-card'><div class='weather-icon cloud'></div><h1>"+max+"</h1><p>"+todayLabel+"</p></div>");

				    	} else if(weath === 'scattered clouds'){

				    		$("#weather").append("<div style='float:left;' class='weather-card'><div class='weather-icon cloud'></div><h1>"+max+"</h1><p>"+todayLabel+"</p></div>");

				    	} else if(weath === 'broken clouds'){

				    		$("#weather").append("<div style='float:left;' class='weather-card'><div class='weather-icon cloud'></div><h1>"+max+"</h1><p>"+todayLabel+"</p></div>");

				    	} else if(weath === 'overcast clouds'){

				    		$("#weather").append("<div style='float:left;' class='weather-card'><div class='weather-icon cloud'></div><h1>"+max+"</h1><p>"+todayLabel+"</p></div>");

				    	} else if(weath === 'shower rain'){

				    		$("#weather").append("<div style='float:left;' class='weather-card'><div class='weather-icon rain2'></div><h1>"+max+"</h1><p>"+todayLabel+"</p></div>");

				    	} else if(weath === 'light rain'){

				    		$("#weather").append("<div style='float:left;' class='weather-card'><div class='weather-icon rain2'></div><h1>"+max+"</h1><p>"+todayLabel+"</p></div>");

				    	} else if(weath === 'moderate rain'){

				    		$("#weather").append("<div style='float:left;' class='weather-card'><div class='weather-icon rain2'></div><h1>"+max+"</h1><p>"+todayLabel+"</p></div>");

				    	} else if(weath === 'Rain'){

				    		$("#weather").append("<div style='float:left;' class='weather-card'><div class='weather-icon rain2'></div><h1>"+max+"</h1><p>"+todayLabel+"</p></div>");

				    	} else if(weath === 'Thunderstorm'){

				    		$("#weather").append("<div style='float:left;' class='weather-card'><div class='weather-icon rain2'></div><h1>"+max+"</h1><p>"+todayLabel+"</p></div>");

				    	} else if(weath === 'snow'){

				    		$("#weather").append("<div style='float:left;' class='weather-card'><div class='weather-icon snow2'></div><h1>"+max+"</h1><p>"+todayLabel+"</p></div>");

				    	} else if(weath === 'mist'){

				    		$("#weather").append("<div style='float:left;' class='weather-card'><div class='weather-icon cloud'></div><h1>"+max+"</h1><p>"+todayLabel+"</p></div>");

				    	}

			    	}

			    }

			   
			    

			});

		}

	});

})