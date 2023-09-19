import 'package:flutter/material.dart';
import 'package:weather_app/common/constants/palette.dart';
import '../../common/constants/assets_path.dart';

class LocationSearchField extends StatelessWidget {
  final TextEditingController controller;
  final Size prefixSize;

  const LocationSearchField({
    super.key,
    required this.controller,
    required this.prefixSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(40),
      ),
      constraints: const BoxConstraints.expand(
        width: 805,
        height: 62,
      ),
      child: Row(
        children: [
          const SizedBox(width: 24),
          Image(
            image: const AssetImage(AssetPath.searchIcon),
            height: prefixSize.height,
            width: prefixSize.width,
          ),
          Flexible(
            child: TextField(
              controller: controller,
              style: Theme.of(context).textTheme.bodyMedium,
              decoration: const InputDecoration(
                hintText: 'Search for your preffered city...',
                constraints: BoxConstraints(
                  maxHeight: 62,
                  maxWidth: 800,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
