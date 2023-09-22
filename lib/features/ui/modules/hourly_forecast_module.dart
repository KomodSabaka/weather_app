import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/utils/utils.dart';
import '../../blocs/weather_bloc/weather_bloc.dart';
import '../widgets/box_widget.dart';
import '../widgets/hourly_chip_widget.dart';

class HourlyForecastModule extends StatelessWidget {
  const HourlyForecastModule({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherStateBloc =
        BlocProvider.of<WeatherBloc>(context).state as WeatherLoaded;
    var presentDay = weatherStateBloc.weather.forecast!.forecastday!.first;

    return BoxWidget(
      width: 870,
      height: 366,
      child: Column(
        children: [
          const SizedBox(height: 13),
          Text(
            'Hourly Forecast:',
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontSize: 32),
          ),
          const SizedBox(height: 19),
          SizedBox(
            height: 270,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: presentDay.hour!.length,
              itemBuilder: (context, index) {
                var currentHour = presentDay.hour![index];
                var time = currentHour.time!
                    .replaceRange(0, currentHour.time!.length - 5, '');

                return HourlyChipWidget(
                  isDay: isDaytime(time),
                  time: time,
                  weatherIcon: currentHour.condition!.icon!,
                  temperature: currentHour.tempC.toString(),
                  windDir: currentHour.windDir!,
                  wind: currentHour.windKph.toString(),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 15),
            ),
          )
        ],
      ),
    );
  }
}
