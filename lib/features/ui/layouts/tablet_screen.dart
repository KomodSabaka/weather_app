import 'package:flutter/material.dart';
import '../modules/three_day_forecast_module.dart';
import '../modules/hourly_forecast_module.dart';
import '../modules/location_date_time_module.dart';
import '../modules/weather_details_module.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 50),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LocationDateTimeModule(),
                SizedBox(width: 24),
                WeatherDetailsModule(),
              ],
            ),
          ),
          SizedBox(height: 50),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HourlyForecastModule(),
                SizedBox(width: 24),
                ThreeDayForecastModule(),
              ],
            ),
          ),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
