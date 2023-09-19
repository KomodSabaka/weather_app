import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/app_layout.dart';
import 'package:weather_app/common/thems/app_theme.dart';
import 'package:weather_app/features/blocs/theme_cubit/theme_cubit.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => ThemeCubit(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, bool>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: state ? AppTheme().light : AppTheme().dark,
          home: const AppLayout(),
        );
      },
    );
  }
}
