import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  try {
    WeatherData weatherData = await fetchWeatherData();
    printWeatherInfo(weatherData);
  } catch (error) {
    print('An error occurred while fetching weather data: $error');
  }
}

Future<WeatherData> fetchWeatherData() async {
  String apiUrl = 'https://api.weatherapi.com/v1/current.json';
  String apiKey = 'YOUR_API_KEY'; // Replace with your API key

  String location = 'London'; // Replace with your desired location

  Uri uri = Uri.parse('$apiUrl?key=$apiKey&q=$location');

  var response = await http.get(uri);

  if (response.statusCode == 200) {
    var jsonData = jsonDecode(response.body);
    WeatherData weatherData = WeatherData.fromJson(jsonData);
    return weatherData;
  } else {
    throw 'HTTP request failed with status: ${response.statusCode}';
  }
}

void printWeatherInfo(WeatherData weatherData) {
  print('Current Weather in ${weatherData.locationName}:');
  print('Temperature: ${weatherData.temperature}°C');
  print('Conditions: ${weatherData.weatherConditions}');
}

class WeatherData {
  String locationName;
  double temperature;
  String weatherConditions;

  WeatherData({
    required this.locationName,
    required this.temperature,
    required this.weatherConditions,
  });

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
      locationName: json['location']['name'],
      temperature: json['current']['temp_c'],
      weatherConditions: json['current']['condition']['text'],
    );
  }
}
