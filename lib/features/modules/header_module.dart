import 'package:flutter/material.dart';
import 'package:weather_app/features/widgets/location_search_field.dart';
import 'package:weather_app/features/widgets/theme_switch_widget.dart';

import '../widgets/location_search_button.dart';

class HeaderModule extends StatelessWidget {
  final TextEditingController controller;

  const HeaderModule({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return const Row(
            children: [],
          );
        } else {
          return Column(
            children: [
              const ThemeSwitchWidget(),
              const SizedBox(height: 12),
              LocationSearchField(
                controller: controller,
                prefixSize: const Size(24, 24),
              ),
              const SizedBox(height: 8),
              const Align(
                alignment: Alignment.centerRight,
                child: LocationSearchButton(
                  imageSize: Size(24, 24),
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
