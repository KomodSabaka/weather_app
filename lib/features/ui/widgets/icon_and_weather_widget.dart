import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/weather_bloc/weather_bloc.dart';

class IconAndWeatherWidget extends StatelessWidget {
  const IconAndWeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherStateBloc =
        BlocProvider.of<WeatherBloc>(context).state as WeatherLoaded;
    var currentWeather = weatherStateBloc.weather.current!.condition;
    return Column(
      children: [
        Image.network(
          currentWeather!.icon!,
          height: 200,
          width: 200,
          fit: BoxFit.cover,
        ),
        Text(currentWeather.text!,
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontSize: 32)),
      ],
    );
  }
}
