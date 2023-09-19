import 'package:flutter/material.dart';
import 'package:weather_app/common/constants/assets_path.dart';

class MainDetailsWidget extends StatelessWidget {
  const MainDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(left: 24, top: 15),
      child: Column(
        children: [
          ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (bounds) => const LinearGradient(colors: [
              Color(0xFFFFFFFF),
              Color(0x00FFFFFF),
            ]).createShader(
              Rect.fromLTWH(0, 0, bounds.width, bounds.height),
            ),
            child: Text(
              '24°C',
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
                '22°C',
                style: textTheme.displaySmall!.copyWith(fontSize: 32),
              ),
            ],
          ),
          const SizedBox(height: 26),
          Row(
            children: [
              const Image(image: AssetImage(AssetPath.sunriseIcon)),
              const SizedBox(width: 10),
              Column(
                children: [
                  Text(
                    'Sunrise',
                    style: textTheme.displaySmall!.copyWith(fontSize: 20),
                  ),
                  Text(
                    '06:37 AM',
                    style: textTheme.displaySmall!.copyWith(fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Image(image: AssetImage(AssetPath.sunsetIcon)),
              const SizedBox(width: 10),
              Column(
                children: [
                  Text(
                    'Sunset',
                    style: textTheme.displaySmall!.copyWith(fontSize: 20),
                  ),
                  Text(
                    '20:37 AM',
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
