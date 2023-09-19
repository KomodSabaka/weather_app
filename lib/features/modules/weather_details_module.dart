import 'package:flutter/material.dart';
import 'package:weather_app/features/widgets/extra_details_widget.dart';
import 'package:weather_app/features/widgets/icon_and_weather_widget.dart';
import 'package:weather_app/features/widgets/main_details_widget.dart';

class WeatherDetailsModule extends StatelessWidget {
  const WeatherDetailsModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(
        width: 780,
        height: 330,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            offset: Offset(10, 10),
            blurRadius: 4,
            color: Color(0x60000000),
          ),
        ],
      ),
      child: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            MainDetailsWidget(),
            SizedBox(width: 26),
            IconAndWeatherWidget(),
            ExtraDetailsWidget(),
          ],
        ),
      ),
    );
  }
}
