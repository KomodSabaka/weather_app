import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/features/modules/location_date_time_module.dart';
import 'package:weather_app/features/modules/weather_details_module.dart';

import 'common/constants/assets_path.dart';
import 'features/widgets/bg.dart';
import 'features/modules/header_module.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({super.key});

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BG(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 24,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderModule(
                controller: _textEditingController,
              ),
              const SizedBox(height: 16),
              const LocationDateTimeModule(),
              const SizedBox(height: 24),
              WeatherDetailsModule(),
            ],
          ),
        ),
      ),
    );
  }
}
