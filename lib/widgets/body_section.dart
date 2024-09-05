import 'package:flutter/material.dart';
import 'package:weather_app/helpers/constants/color_constants.dart';
import 'package:weather_app/helpers/constants/icon_constants.dart';

class BodySection extends StatelessWidget {
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String image;
  const BodySection(
      {super.key,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          IconConstants.sunnyIcon,
          size: 90,
          color: ColorConstants.sunColor,
        ),
        const SizedBox(height: 18),
        RichText(
            text: TextSpan(
                text: '${temp.round()}',
                style: const TextStyle(
                  color: ColorConstants.whiteColor,
                  fontSize: 56,
                  fontFamily: "SF Pro",
                  fontWeight: FontWeight.w700,
                ),
                children: const [
              TextSpan(
                  text: "°C",
                  style: TextStyle(
                    fontFamily: "",
                    fontWeight: FontWeight.w200,
                  ))
            ])),
        const SizedBox(height: 18),
        Text(
          "MaxTemp ${minTemp.round()} \nMin Temp ${maxTemp.round()},",
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: ColorConstants.whiteColor,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 18),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              IconConstants.windy,
              size: 22,
              color: ColorConstants.whiteColor,
            ),
            const SizedBox(width: 8),
            Text(
              "3 mph%",
              style: TextStyle(
                color: ColorConstants.whiteOpacity9Color,
                fontSize: 14,
              ),
            ),
            const SizedBox(width: 40),
            const Icon(
              IconConstants.waterDropIcon,
              size: 22,
              color: ColorConstants.whiteColor,
            ),
            const SizedBox(width: 8),
            Text(
              "60%",
              style: TextStyle(
                color: ColorConstants.whiteOpacity9Color,
                fontSize: 14,
              ),
            )
          ],
        )
      ],
    );
  }
}
