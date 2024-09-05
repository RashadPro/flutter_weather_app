import 'package:flutter/material.dart';
import 'package:weather_app/helpers/constants/color_constants.dart';
import 'package:weather_app/helpers/constants/date_constants.dart';
import 'package:weather_app/helpers/constants/image_constants.dart';
import 'package:weather_app/views/search_view.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(ImageConstants.list),
        Text(
          DateConstants.getCurrentTime,
          style: const TextStyle(
            color: ColorConstants.whiteColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        IconButton(
          onPressed: () {
            // ده كلاس اسمو ملاحة وجواه دوال منها دالة اسمها بوش او دفع بالعربي
            // كمان البوش دي بتاخد مسار او الراوت بالانجليزي والروات ده بياخد كلاس بيجوهني للاسكرينة
            Navigator.push(
              //مكان الاسكرينة الحالية
              context,
              //مسار صفحة المواد
              MaterialPageRoute(
                // الباني او البيلدر ده بياخد الكونتيكست وبيعمل ريتيرن للويجدت
                builder: (context) => const SearchView(),
              ),
            );
          },
          icon: Image.asset(ImageConstants.search),
        ),
      ],
    );
  }
}
