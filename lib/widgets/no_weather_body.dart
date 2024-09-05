import 'package:flutter/material.dart';
import 'package:weather_app/helpers/constants/color_constants.dart';
import 'package:weather_app/helpers/constants/image_constants.dart';
import 'package:weather_app/widgets/top_bar.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
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
        child: const Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 70),
            TopBar(),
            SizedBox(height: 250),
            Text(
              "There is no weather 😔 Start",
              style: TextStyle(
                color: ColorConstants.whiteColor,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "Searching now 🔍",
              style: TextStyle(
                color: ColorConstants.whiteColor,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
