import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/features/providers/theme_provider.dart';

class ThemeSwitchWidget extends StatelessWidget {
  const ThemeSwitchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);

    Widget toggle = Switch(
        value: !themeProvider.nowLightTheme,
        onChanged: (value) {
          themeProvider.setTheme();
        });
    Widget description = Text(
      themeProvider.nowLightTheme ? 'Light Mode' : 'Dark Mode',
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 18),
    );

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1348) {
          return Column(
            children: [
              toggle,
              description,
            ],
          );
        } else {
          return Row(
            children: [
              toggle,
              const SizedBox(width: 9),
              description,
            ],
          );
        }
      },
    );
  }
}
