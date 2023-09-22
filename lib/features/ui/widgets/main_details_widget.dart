import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/common/constants/assets_paths.dart';
import 'package:weather_app/common/constants/palette.dart';
import 'package:weather_app/features/providers/theme_provider.dart';
import '../../blocs/weather_bloc/weather_bloc.dart';

class MainDetailsWidget extends StatelessWidget {
  const MainDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    var themeProvider = Provider.of<ThemeProvider>(context);
    var weatherStateBloc =
        BlocProvider.of<WeatherBloc>(context).state as WeatherLoaded;
    var currentWeather = weatherStateBloc.weather.current;
    var astro = weatherStateBloc.weather.forecast!.forecastday!.first.astro;

    return Padding(
      padding: const EdgeInsets.only(left: 24, top: 15),
      child: Column(
        children: [
          ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (bounds) => LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                themeProvider.nowLightTheme
                    ? Palette.textLight
                    : Palette.textDark,
                const Color(0x607E7E7E),
              ],
              stops: const [0.0, 1.0],
            ).createShader(
              Rect.fromLTWH(0, 0, bounds.width, bounds.height),
            ),
            child: Text(
              '${currentWeather!.tempC}°C',
              style: textTheme.displayMedium!.copyWith(fontSize: 80),
            ),
          ),
          Row(
            children: [
              Text(
                'Feels like:',
                style: textTheme.displaySmall!.copyWith(fontSize: 20),
              ),
              const SizedBox(width: 9),
              Text(
                '${currentWeather.feelslikeC}°C',
                style: textTheme.displaySmall!.copyWith(fontSize: 32),
              ),
            ],
          ),
          const SizedBox(height: 26),
          Row(
            children: [
              Image(
                image: const AssetImage(AssetPaths.sunriseIcon),
                color: Theme.of(context).textTheme.displayLarge!.color,
              ),
              const SizedBox(width: 10),
              Column(
                children: [
                  Text(
                    'Sunrise',
                    style: textTheme.displaySmall!.copyWith(fontSize: 20),
                  ),
                  Text(
                    astro!.sunrise!,
                    style: textTheme.displaySmall!.copyWith(fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Image(
                image: const AssetImage(AssetPaths.sunsetIcon),
                color: Theme.of(context).textTheme.displayLarge!.color,
              ),
              const SizedBox(width: 10),
              Column(
                children: [
                  Text(
                    'Sunset',
                    style: textTheme.displaySmall!.copyWith(fontSize: 20),
                  ),
                  Text(
                    astro.sunset!,
                    style: textTheme.displaySmall!.copyWith(fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
