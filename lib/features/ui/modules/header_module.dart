import 'package:flutter/material.dart';
import '../widgets/location_search_button.dart';
import '../widgets/location_search_field.dart';
import '../widgets/theme_switch_widget.dart';

class HeaderModule extends StatelessWidget {
  const HeaderModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 63.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1348) {
            return Container(
              alignment: Alignment.center,
              width: 1348,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const ThemeSwitchWidget(),
                  const SizedBox(width: 72),
                  Container(
                    constraints: const BoxConstraints(
                      maxWidth: 803,
                    ),
                    child: const LocationSearchField(),
                  ),
                  const SizedBox(width: 81),
                  const LocationSearchButton(
                    imageSize: Size(24, 24),
                  ),
                ],
              ),
            );
          } else if (constraints.maxWidth > 600) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ThemeSwitchWidget(),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: LocationSearchField(),
                      ),
                      SizedBox(width: 12),
                      LocationSearchButton(
                        imageSize: Size(24, 24),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                ],
              ),
            );
          } else {
            return const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ThemeSwitchWidget(),
                SizedBox(height: 12),
                LocationSearchField(),
                SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: LocationSearchButton(
                    imageSize: Size(24, 24),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
