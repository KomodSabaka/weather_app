import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/blocs/weather_bloc/weather_bloc.dart';

class ExtraDetailsWidget extends StatelessWidget {
  const ExtraDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    var weatherStateBloc = BlocProvider.of<WeatherBloc>(context).state as WeatherLoaded;

    List<String> icons = [
      'assets/icons/humidity_icon.png',
      'assets/icons/wind_icon.png',
      'assets/icons/pressure_icon.png',
      'assets/icons/uv_icon.png',
    ];

    List<String> data = [
      '${weatherStateBloc.weather.current!.humidity.toString()}%',
      '${weatherStateBloc.weather.current!.windKph.toString()}km/h',
      '${weatherStateBloc.weather.current!.pressureIn.toString()}hPa',
      weatherStateBloc.weather.current!.uv.toString(),
    ];

    List<String> title = [
      'Humidity',
      'Wind',
      'Pressure',
      'UV',
    ];

    return Container(
      constraints: const BoxConstraints.expand(
        height: 330,
        width: 330,
      ),
      child: GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.only(top: 26, right: 9),
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: title.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image(
                image: AssetImage(icons[index]),
                color: Theme.of(context).textTheme.displayLarge!.color,
              ),
              const SizedBox(height: 12),
              Text(
                data[index],
                style: textTheme.displaySmall!.copyWith(fontSize: 20),
              ),
              const SizedBox(height: 12),
              Text(
                title[index],
                style: textTheme.bodyLarge!.copyWith(fontSize: 16),
              ),
            ],
          );
        },
      ),
    );
  }
}
