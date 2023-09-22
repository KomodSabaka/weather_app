import 'package:flutter/material.dart';
import '../widgets/box_widget.dart';
import '../widgets/extra_details_widget.dart';
import '../widgets/icon_and_weather_widget.dart';
import '../widgets/main_details_widget.dart';

class WeatherDetailsModule extends StatelessWidget {
  const WeatherDetailsModule({super.key});

  Widget buildScroll(ScrollPhysics? scrollPhysics) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: scrollPhysics,
      child:  const Row(
        children: [
          MainDetailsWidget(),
          SizedBox(width: 26),
          IconAndWeatherWidget(),
          ExtraDetailsWidget(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BoxWidget(
      width: 780,
      height: 330,
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return buildScroll(null);
        } else {
          return buildScroll(
            const NeverScrollableScrollPhysics(),
          );
        }
      }),
    );
  }
}
