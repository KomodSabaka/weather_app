import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/features/providers/theme_provider.dart';
import '../../../common/utils/utils.dart';

class HourlyChipWidget extends StatelessWidget {
  final bool isDay;
  final String time;
  final String weatherIcon;
  final String temperature;
  final String windDir;
  final String wind;

  const HourlyChipWidget({
    super.key,
    required this.isDay,
    required this.time,
    required this.weatherIcon,
    required this.temperature,
    required this.windDir,
    required this.wind,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      decoration: BoxDecoration(
        color: themeProvider.nowLightTheme ? null : theme.cardColor,
        borderRadius: BorderRadius.circular(40),
        gradient: themeProvider.nowLightTheme
            ? LinearGradient(
                begin: Alignment.topCenter,
                end: const Alignment(1, 3),
                colors: isDaytime(time)
                    ? [const Color(0xFFF88508), const Color(0x00F6FAD9)]
                    : [const Color(0xFF443D64), const Color(0x006582C6)],
                stops: const [0.0, 2],
              )
            : null,
      ),
      child: Column(
        children: [
          Text(
            time,
            style: theme.textTheme.displayMedium!.copyWith(fontSize: 24),
          ),
          const SizedBox(height: 10),
          Image.network(
            weatherIcon,
            height: 80,
            width: 80,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 10),
          Text(
            temperature,
            style: theme.textTheme.displayMedium!.copyWith(fontSize: 20),
          ),
          const SizedBox(height: 10),
          Text(windDir),
          const SizedBox(height: 10),
          Text(
            wind,
            style: theme.textTheme.displayMedium!.copyWith(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
