class WeatherModel {
  final String governorateName;
  final DateTime date;
  final String? image;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String weatherCondation;

  WeatherModel({
    required this.governorateName,
    required this.date,
    required this.image,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.weatherCondation,
  });

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
        governorateName: json['location']['name'],
        date: DateTime.parse(json['current']['last_updated']),
        image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
        maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
        temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
        weatherCondation: json['forecast']['forecastday'][0]['day']['condition']
            ['text']);
  }
}
