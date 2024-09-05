import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get%20weather%20cubit/get_weather_states.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/services/weather_services.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  // هنا بخلي الوضع الابتدائي
  GetWeatherCubit() : super(WeatherInitialState());
  late WeatherModel weatherModel;
  //functions
  getWeather({required String cityName}) async {
    try {
       weatherModel =
          await WeatherServices(dio: Dio()).getCurrentWeather(cityName: cityName);
      emit(WeatherLoadedState());
    } catch (e) {
      emit(WeatherFailureState());
    }
  }
}
