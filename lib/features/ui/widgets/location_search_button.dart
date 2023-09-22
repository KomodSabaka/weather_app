import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/blocs/weather_bloc/weather_bloc.dart';
import '../../../common/constants/assets_paths.dart';

class LocationSearchButton extends StatelessWidget {
  final Size imageSize;

  const LocationSearchButton({
    super.key,
    required this.imageSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () =>
          BlocProvider.of<WeatherBloc>(context).add(const GetForecastEvent()),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AssetPaths.currentLocationIcon,
            height: imageSize.height,
            width: imageSize.width,
          ),
          const SizedBox(width: 12),
          Text(
            'Current Location',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(fontSize: 22, color: const Color(0x80FFFFFF)),
          ),
        ],
      ),
    );
  }
}
