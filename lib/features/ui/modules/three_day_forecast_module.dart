import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../blocs/weather_bloc/weather_bloc.dart';
import '../widgets/box_widget.dart';
import '../widgets/three_days_forecast_widget.dart';

class ThreeDayForecastModule extends StatelessWidget {
  const ThreeDayForecastModule({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherStateBloc =
        BlocProvider.of<WeatherBloc>(context).state as WeatherLoaded;
    TextTheme textTheme = Theme.of(context).textTheme;
    return BoxWidget(
      width: 414,
      height: 366,
      child: Column(
        children: [
          const SizedBox(height: 18),
          Text(
            '3 Days Forecast:',
            style: textTheme.displayMedium!.copyWith(fontSize: 32),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: weatherStateBloc.weather.forecast!.forecastday!.length,
            itemBuilder: (context, index) {
              var forecastDay =
                  weatherStateBloc.weather.forecast!.forecastday![index];
              DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(
                  forecastDay.dateEpoch! * 1000);
              String formattedDate =
                  DateFormat('EEEE, dd MMM').format(dateTime);

              return ThreeDaysForecastWidget(
                icon: forecastDay.day!.condition!.icon!,
                temp: forecastDay.day!.avgtempC!.round().toString(),
                date: formattedDate,
              );
            },
          ),
        ],
      ),
    );
  }
}
