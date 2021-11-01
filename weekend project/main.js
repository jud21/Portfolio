//API Key = d30a6715b8f6fea88c07a9937934865d

const inFahrenheit = (temp) => {
    let fah_temp = temp * (9/5) - 459.67;
    return Math.round(fah_temp)
 };

const getData = async() =>{
    let city = document.querySelector('.form-control').value
    console.log(city);
    document.querySelector('.form-control').value = ''
    let result = await axios.get(`api.openweathermap.org/data/2.5/weather?q=${city}&appid=d30a6715b8f6fea88c07a9937934865d`);
    let weather = result.data;
    console.log(weather)
    return weather
};

const loadData = async() => {
    let weatherData = await getData();

    let high = weatherData.main.temp_max;

    let low = weatherData.main.temp_min;

    let forecast = weatherData.weather[0].description;

    let humidity = weatherData.main.humidity;

    let high_display = document.getElementById('high');
    high_display.innerHTML = inFahrenheit(high);

    let low_display = document.getElementById('low');
    low_display.innerHTML = inFahrenheit(low);

    let forecast_display = document.getElementById('forecast');
    forecast_display.innerHTML = forecast;

    let humidity_display = document.getElementById('humidity');
    humidity_display.innerHTML = humidity;

}