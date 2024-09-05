import 'package:dio/dio.dart';
import 'package:weather_app/model/weather_model.dart';

class WeatherServices {
  final Dio dio;
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = '213f91da716242b5ab065731242908';
  WeatherServices({required this.dio});

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
          '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1&aqi=no&alerts=no');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage =
          e.response?.data['error']['message'] ?? "Where was an error";
      throw Exception(errorMessage);
    } catch (e) {
      //  log(e.toString());
      throw Exception('');
    }
  }
}
