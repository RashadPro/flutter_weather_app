import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get%20weather%20cubit/get_weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Search City",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
            child: TextField(
          onSubmitted: (value) async {
            var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
            getWeatherCubit.getWeather(cityName: value);
            Navigator.pop(context);
          },
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              vertical: 25,
              horizontal: 16,
            ),
            labelText: "Search",
            suffixIcon: const Icon(Icons.search),
            hintText: "Enter City Name",
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.blue,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.blue,
              ),
            ),
          ),
        )),
      ),
    );
  }
}
