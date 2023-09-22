import 'package:flutter/material.dart';
import '../modules/hourly_forecast_module.dart';
import '../modules/three_day_forecast_module.dart';
import '../modules/location_date_time_module.dart';
import '../modules/weather_details_module.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 24,
      ),
      child: SingleChildScrollView(
        clipBehavior: Clip.none,
        primary: true,
        child: Column(
          children: [
            SizedBox(height: 16),
            LocationDateTimeModule(),
            SizedBox(height: 24),
            WeatherDetailsModule(),
            SizedBox(height: 24),
            HourlyForecastModule(),
            SizedBox(height: 24),
            ThreeDayForecastModule(),
          ],
        ),
      ),
    );
  }
}
