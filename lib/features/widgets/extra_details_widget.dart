import 'package:flutter/material.dart';

class ExtraDetailsWidget extends StatelessWidget {
  const ExtraDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> icons = [
      'assets/icons/humidity_icon.png',
      'assets/icons/wind_icon.png',
      'assets/icons/pressure_icon.png',
      'assets/icons/uv_icon.png',
    ];

    List<String> data = [
      '41%',
      '2km/h',
      '997hPa',
      '8',
    ];

    List<String> title = [
      'Humidity',
      'Wind',
      'Pressure',
      'UV',
    ];

    TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      constraints: BoxConstraints.expand(
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
              Image(image: AssetImage(icons[index])),
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
