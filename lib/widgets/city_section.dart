import 'package:flutter/material.dart';
import 'package:weather_app/helpers/constants/color_constants.dart';
import 'package:weather_app/helpers/constants/date_constants.dart';

class CitySection extends StatelessWidget {
  final String cityName;
  final DateTime date;
  const CitySection({super.key, required this.cityName, required this.date});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          cityName,
          style: const TextStyle(
            color: ColorConstants.whiteColor,
            fontSize: 40,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          "Updated at: ${DateConstants.getCurrentTime}",
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
