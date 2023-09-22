import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/common/thems/app_theme.dart';
import 'package:weather_app/features/providers/theme_provider.dart';
import 'package:weather_app/features/blocs/weather_bloc/weather_bloc.dart';
import 'common/services/locator.dart';
import 'features/ui/layouts/app_layout.dart';

void main() async {
  await setupLocator();
  runApp(
    BlocProvider(
      create: (context) => WeatherBloc(),
      child: ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse},
      ),
      theme: themeProvider.nowLightTheme ? AppTheme().light : AppTheme().dark,
      home: const AppLayout(),
    );
  }
}
