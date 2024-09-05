import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get%20weather%20cubit/get_weather_cubit.dart';
import 'package:weather_app/helpers/constants/color_constants.dart';
import 'package:weather_app/helpers/constants/image_constants.dart';
import 'package:weather_app/widgets/body_section.dart';
import 'package:weather_app/widgets/city_section.dart';
import 'package:weather_app/widgets/top_bar.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Scaffold(
        body: Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage(
            ImageConstants.bgImage,
          ),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              ColorConstants.kbgOverlayColor.withOpacity(0.83),
              BlendMode.srcOver),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 60),
          const TopBar(),
          const SizedBox(height: 60),
          CitySection(
            cityName: weatherModel.governorateName,
            date: weatherModel.date,
          ),
          const SizedBox(height: 50),
          BodySection(
            image: weatherModel.image ?? "assets/images/snow.png",
            temp: weatherModel.temp,
            maxTemp: weatherModel.maxTemp,
            minTemp: weatherModel.minTemp,
          ),
          const SizedBox(height: 90),
          // FooterSection(),
        ],
      ),
    ));
  }
}
