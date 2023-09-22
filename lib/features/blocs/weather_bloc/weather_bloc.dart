import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/common/services/locator.dart';
import 'package:weather_app/common/services/weather_api_service.dart';
import 'package:weather_app/common/services/request_permissions.dart';
import 'package:weather_app/common/services/location_searcher.dart';

import '../../../models/weather.dart';

part 'weather_event.dart';

part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitial()) {
    on<GetForecastEvent>(_getForecast);
  }

  void _getForecast(GetForecastEvent event, Emitter<WeatherState> emit) async {
    try {
      await locator<location_searcher>().requestLocationPermission();

      emit(WeatherLoading());
      var location = event.location;
      Position? position;

      if (location == null) {
        position = await locator<LocationSearcher>().getLocation();
      }

      final forecast = await locator<WeatherApiService>().requestWeather(
          location: location ?? '${position!.latitude},${position.longitude}');

      emit(WeatherLoaded(weather: forecast));
    } on Exception catch (e) {
      emit(ErrorLoadingWeather(error: e.toString()));
    }
  }
}
