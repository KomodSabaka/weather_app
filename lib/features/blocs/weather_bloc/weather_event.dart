part of 'weather_bloc.dart';

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();
}

class GetForecastEvent extends WeatherEvent {
  final String? location;

  const GetForecastEvent({
    this.location,
  });

  @override
  List<Object?> get props => [location];
}
