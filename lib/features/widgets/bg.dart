import 'package:flutter/material.dart';
import 'package:weather_app/common/constants/palette.dart';

class BG extends StatelessWidget {
  final Widget child;

  const BG({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Palette.lightBGDark,
                Palette.darkBGDark,
              ],
          ),
        ),
        child: SafeArea(
          child: child,
        ),
      ),
    );
  }
}
