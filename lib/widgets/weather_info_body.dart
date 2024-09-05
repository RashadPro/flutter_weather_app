import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get%20weather%20cubit/get_weather_cubit.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});
  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.white,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //Space
          const SizedBox(
            height: 200,
          ),
          //Here the name of the governorate appears
          Text(
            weatherModel.governorateName,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          //updated at:
          Text(
            "updated at: ${weatherModel.date.hour}:${weatherModel.date.minute}",
            style: const TextStyle(
              fontSize: 28,
            ),
          ),
          //Space
          const SizedBox(
            height: 100,
          ),
          //Space
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //Picture
              Image.network(
                "https:${weatherModel.image}",
              ),
              //temperature
              Text(
                '${weatherModel.temp}',
                style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  Text(
                    "MaxTemp: ${weatherModel.maxTemp.round()}",
                  ),
                  Text("MinTemp: ${weatherModel.minTemp.round()}"),
                ],
              )
            ],
          ),
          //Space
          const SizedBox(
            height: 50,
          ),
          //Light Rain
          Text(
            weatherModel.weatherCondation,
            style: const TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
