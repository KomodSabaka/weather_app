import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../blocs/weather_bloc/weather_bloc.dart';
import '../widgets/box_widget.dart';

class LocationDateTimeModule extends StatelessWidget {
  const LocationDateTimeModule({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherStateBloc =
        BlocProvider.of<WeatherBloc>(context).state as WeatherLoaded;

    int localTimeEpoch = weatherStateBloc.weather.location!.localtimeEpoch!;
    DateTime dateTime =
        DateTime.fromMillisecondsSinceEpoch(localTimeEpoch * 1000);
    String formattedDate = DateFormat('EEEE, dd MMM').format(dateTime);
    String formattedTime = DateFormat('HH:mm').format(dateTime);

    return BoxWidget(
      width: 510,
      height: 330,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherStateBloc.weather.location!.name!,
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontSize: 36),
          ),
          Text(
            formattedTime,
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontSize: 96),
          ),
          Text(
            formattedDate,
            style:
                Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
