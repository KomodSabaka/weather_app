import 'package:flutter/material.dart';

class IconAndWeatherWidget extends StatelessWidget {
  const IconAndWeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.sunny,
          size: 245,
        ),
        Text('Sunny',
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(fontSize: 32)),
      ],
    );
  }
}
