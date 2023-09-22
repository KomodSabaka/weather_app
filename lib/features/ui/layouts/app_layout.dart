import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/weather_bloc/weather_bloc.dart';
import '../modules/header_module.dart';
import '../widgets/bg.dart';
import 'mobile_screen.dart';
import 'tablet_screen.dart';
import 'web_screen.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({super.key});

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  void _getCurrentForecast() =>
      BlocProvider.of<WeatherBloc>(context).add(const GetForecastEvent());

  @override
  void initState() {
    _getCurrentForecast();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BG(
      child: LayoutBuilder(
        builder: (context, constraints) => NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  expandedHeight: constraints.maxWidth < 600 ? 230 : 190,
                  collapsedHeight: constraints.maxWidth < 600 ? 230 : 190,
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  flexibleSpace: const HeaderModule(),
                ),
              ),
            ];
          },
          body: BlocBuilder<WeatherBloc, WeatherState>(
            builder: (context, state) {
              if (state is WeatherInitial) {
                return const SizedBox();
              } else if (state is WeatherLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is ErrorLoadingWeather) {
                return Center(
                  child: Text(
                    'Error. Try again',
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(fontSize: 20),
                  ),
                );
              } else if (state is WeatherLoaded) {
                if (constraints.maxWidth > 1348) {
                  return const WebScreen();
                } else if (constraints.maxWidth > 600) {
                  return const TabletScreen();
                } else {
                  return const MobileScreen();
                }
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
    );
  }
}
