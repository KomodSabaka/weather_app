import 'package:flutter/material.dart';

import '../../common/constants/assets_path.dart';

class LocationSearchButton extends StatelessWidget {
  final Size imageSize;

  const LocationSearchButton({
    super.key,
    required this.imageSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AssetPath.currentLocationIcon,
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
