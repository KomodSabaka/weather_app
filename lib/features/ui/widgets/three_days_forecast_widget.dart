import 'package:flutter/material.dart';

class ThreeDaysForecastWidget extends StatelessWidget {
  final String icon;
  final String temp;
  final String date;

  const ThreeDaysForecastWidget({
    super.key,
    required this.icon,
    required this.temp,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: 30),
        Image.network(
          icon,
          height: 60,
          width: 60,
        ),
        const SizedBox(width: 43),
        SizedBox(
          child: Text(
            '${temp}c',
            style: textTheme.displaySmall!.copyWith(fontSize: 24),
          ),
        ),
        const SizedBox(width: 42),
        Text(
          date,
          style: textTheme.displaySmall!.copyWith(fontSize: 20),
        ),
      ],
    );
  }
}
