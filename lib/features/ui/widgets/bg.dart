import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/common/constants/palette.dart';
import 'package:weather_app/features/providers/theme_provider.dart';

class BG extends StatelessWidget {
  final Widget child;

  const BG({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: themeProvider.nowLightTheme
                ? [
                    Palette.lightBGLight,
                    Palette.darkBGLight,
                  ]
                : [
                    Palette.lightBGDark,
                    Palette.darkBGDark,
                  ],
            stops: const [0.0, 0.8],
          ),
        ),
        child: SafeArea(
          child: child,
        ),
      ),
    );
  }
}
