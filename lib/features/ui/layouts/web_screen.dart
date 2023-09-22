import 'package:flutter/cupertino.dart';
import '../modules/three_day_forecast_module.dart';
import '../modules/hourly_forecast_module.dart';
import '../modules/location_date_time_module.dart';
import '../modules/weather_details_module.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LocationDateTimeModule(),
              SizedBox(width: 55),
              WeatherDetailsModule(),
            ],
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HourlyForecastModule(),
              SizedBox(width: 61),
              ThreeDayForecastModule(),
            ],
          ),
        ],
      ),
    );
  }
}
