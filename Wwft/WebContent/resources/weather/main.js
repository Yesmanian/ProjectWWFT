const CURRENT_LOCATION = document.getElementsByClassName('weather-content__overview')[0];
const CURRENT_TEMP = document.getElementsByClassName('weather-content__temp')[0];
const FORECAST = document.getElementsByClassName('component__forecast-box')[0];

const appid = '9757e2feaa36992cfefe1fef3b91199d'; // use your own API KEY plz 내 API KEY 입력함

// Use Fetch API to GET data from OpenWeather API
function getWeatherData(position) {
  const headers = new Headers();
  const URL = `https://api.openweathermap.org/data/2.5/forecast?${position}&cnt=7&units=metric&APPID=${appid}`;

//   return fetch(URL, {
//     method: 'GET',
//     headers: headers
//   }).then(data => data.json());
// }
  return fetch(URL, {
    method: 'GET',
    headers: headers
  }).then(data => data.json());
}

/* TUTORIAL READERS:
** I am using an external resource for the icons and applying them 
** here using a switch block; check the sidebar "Resources" to get
** the css if you want to use these icons
*/
// function applyIcon(icon) {
//   let selectedIcon;
//   switch (icon) {
//     case '01d':
//       selectedIcon = "wi-day-sunny"
//       break;
//     case '01n':
//       selectedIcon = "wi-night-clear"
//       break;
//     case '02d':
//     case '02n':
//       selectedIcon = "wi-cloudy"
//       break;
//     case '03d':
//     case '03n':
//     case '04d':
//     case '04n':
//       selectedIcon = "wi-night-cloudy"
//       break;
//     case '09d':
//     case '09n':
//       selectedIcon = "wi-showers"
//       break;
//     case '10d':
//     case '10n':
//       selectedIcon = "wi-rain"
//       break;
//     case '11d':
//     case '11n':
//       selectedIcon = "wi-thunderstorm"
//       break;
//     case '13d':
//     case '13n':
//       selectedIcon = "wi-snow"
//       break;
//     case '50d':
//     case '50n':
//       selectedIcon = "wi-fog"
//       break;
//     default:
//       selectedIcon = "wi-meteor"
//   }
//   return selectedIcon;
// }

// Use returned json from promise to render daily forecast
renderData = function (location, forecast) {
  // render city, current weather description and temp
  // console.log('locajs' + JSON.stringify(location));
  // console.log('뭐가나오려나메인' + JSON.stringify(forecast[0].main));
  // const currentWeather = forecast[0].weather[0];
  // const widgetHeader = `<h1>${location.name}</h1><small>${currentWeather.description}</small>`;
  // console.log(forecast[0].main.temp_kf);
  // CURRENT_TEMP.innerHTML = `<i class="wi ${applyIcon(currentWeather.icon)}"></i> ${Math.round(forecast[0].main.temp_kf)} <i class="wi wi-degrees"></i>`;
  // CURRENT_LOCATION.innerHTML = widgetHeader;


  forecast.forEach(function (key) {
      // let date = new Date(day.dt * 1000);
      // let days = ['Sun', 'Mon', 'Tues', 'Wed', 'Thurs', 'Fri', 'Sat'];
      // let name = days[date.getDay()];
      // console.log('무슨요일 ??' + name);
      // let dayBlock = document.createElement("div");
      // console.log(day);
      // dayBlock.className = 'forecast__item';
      // dayBlock.innerHTML = `<div class="forecast-item__heading">${name}</div>
      //   <div class="forecast-item__info"><i class="wi ${applyIcon(day.weather[0].icon)}"></i> <span class="degrees">${Math.round(day.main.temp_kf)}<i class="wi wi-degrees"></i></span></div>`;
      // FORECAST.appendChild(dayBlock);

      var now = new Date();

      var year= now.getFullYear();

      var mon = (now.getMonth()+1)>9 ? ''+(now.getMonth()+1) : '0'+(now.getMonth()+1);

      var day = now.getDate()>9 ? ''+now.getDate() : '0'+now.getDate();

      var today = year + '-' + mon + '-' + day;

      var week = new Array('일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일');	// 요일

      

      // api에서 받는 날짜

      var date = forecast.list[key].dt_txt.substring(0,10)

      var time = forecast.list[key].dt_txt.substring(11,13)

      var yoil = new Date(date).getDay();	// 받아 오는 날짜의 요일 일-0 월-1 화-2....

      var todayLabel = week[yoil];

      

      // 최고온도 절대 온도로 받아 옴으로

      var max=(Math.round(forecast.list[key].main.temp_max))+"˚C";



      // 날씨

      var weath = forecast.list[key].weather[0].description;

      

      if(date === today) {

        if(time==='12'){

        if (weath === 'sky is clear') {

          $("#weather").append(date + "의 날씨는 " + weath + " 최고 온도는 " + max+"<br/>");

        } else if(weath === 'few clouds'){

          $("#weather").append(date + "의 날씨는 " + weath + " 최고 온도는 " + max+"<br/>");

        } else if(weath === 'scattered clouds'){

          $("#weather").append(date + "의 날씨는 " + weath + " 최고 온도는 " + max+"<br/>");

        } else if(weath === 'broken clouds'){

          $("#weather").append(date + "의 날씨는 " + weath + " 최고 온도는 " + max+"<br/>");

        } else if(weath === 'overcast clouds'){

          $("#weather").append(date + "의 날씨는 " + weath + " 최고 온도는 " + max+"<br/>");

        } else if(weath === 'shower rain'){

          $("#weather").append(date + "의 날씨는 " + weath + " 최고 온도는 " + max+"<br/>");

        } else if(weath === 'light rain'){

          $("#weather").append(date + "의 날씨는 " + weath + " 최고 온도는 " + max+"<br/>");

        } else if(weath === 'moderate rain'){

          $("#weather").append(date + "의 날씨는 " + weath + " 최고 온도는 " + max+"<br/>");

        } else if(weath === 'Rain'){

          $("#weather").append(date + "의 날씨는 " + weath + " 최고 온도는 " + max+"<br/>");

        } else if(weath === 'Thunderstorm'){

          $("#weather").append(date + "의 날씨는 " + weath + " 최고 온도는 " + max+"<br/>");

        } else if(weath === 'snow'){

          $("#weather").append(date + "의 날씨는 " + weath + " 최고 온도는 " + max+"<br/>");

        } else if(weath === 'mist'){

          $("#weather").append(date + "의 날씨는 " + weath + " 최고 온도는 " + max+"<br/>");

        }

        }

      } else {

        if(time==='12'){

          if (weath === 'sky is clear') {

            $("#weather").append(date + "의 날씨는 " + weath + " 최고 온도는 " + max+"<br/>");

          } else if(weath === 'few clouds'){

            $("#weather").append(date + "의 날씨는 " + weath + " 최고 온도는 " + max+"<br/>");

          } else if(weath === 'scattered clouds'){

            $("#weather").append(date + "의 날씨는 " + weath + " 최고 온도는 " + max+"<br/>");

          } else if(weath === 'broken clouds'){

            $("#weather").append(date + "의 날씨는 " + weath + " 최고 온도는 " + max+"<br/>");

          } else if(weath === 'overcast clouds'){

            $("#weather").append(date + "의 날씨는 " + weath + " 최고 온도는 " + max+"<br/>");

          } else if(weath === 'shower rain'){

            $("#weather").append(date + "의 날씨는 " + weath + " 최고 온도는 " + max+"<br/>");

          } else if(weath === 'light rain'){

            $("#weather").append(date + "의 날씨는 " + weath + " 최고 온도는 " + max+"<br/>");

          } else if(weath === 'moderate rain'){

            $("#weather").append(date + "의 날씨는 " + weath + " 최고 온도는 " + max+"<br/>");

          } else if(weath === 'Rain'){

            $("#weather").append(date + "의 날씨는 " + weath + " 최고 온도는 " + max+"<br/>");

          } else if(weath === 'Thunderstorm'){

            $("#weather").append(date + "의 날씨는 " + weath + " 최고 온도는 " + max+"<br/>");

          } else if(weath === 'snow'){

            $("#weather").append(date + "의 날씨는 " + weath + " 최고 온도는 " + max+"<br/>");

          } else if(weath === 'mist'){

            $("#weather").append(date + "의 날씨는 " + weath + " 최고 온도는 " + max+"<br/>");

          }

        }

      }

  });
   
}

// TUTORIAL reader: I moved the calling of the weather API url
// to be able to get the current browser location
// NOTE: check https://github.com/mdn/sprints/issues/1032#issuecomment-517447453 if you're having issues with geolocation
if ("geolocation" in navigator) {
  navigator.geolocation.getCurrentPosition(function (position) {
      const coordinates = `lat=${position.coords.latitude}&lon=${position.coords.longitude}`;
      // run/render the widget data
      getWeatherData(coordinates).then((weatherData) => {
        const city = weatherData.city;
        const dailyForecast = weatherData.list;
        // console.log('데일리'+JSON.stringify(dailyForecast));
        renderData(city, dailyForecast);
      });
    }, e => console.log(e));
} else {
	console.log('unable to retrieve location from browser')
}
