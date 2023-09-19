import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/blocs/theme_cubit/theme_cubit.dart';

class ThemeSwitchWidget extends StatelessWidget {
  const ThemeSwitchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Widget toggle = BlocBuilder<ThemeCubit, bool>(
      builder: (context, state) {
        return Switch(
          value: state,
          onChanged: (value) => context.read<ThemeCubit>().toggleTheme(),
        );
      },
    );
    Widget mode = const Text('Dark Mode');

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return Column(
            children: [
              toggle,
              mode,
            ],
          );
        } else {
          return Row(
            children: [
              toggle,
              mode,
            ],
          );
        }
      },
    );
  }
}
