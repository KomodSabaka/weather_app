import 'package:get_it/get_it.dart';
import 'package:weather_app/common/services/weather_api_service.dart';
import 'package:weather_app/common/services/request_permissions.dart';
import 'package:weather_app/common/services/location_searcher.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerLazySingleton(() => WeatherApiService());
  locator.registerSingletonAsync(() async => location_searcher());
  locator.registerSingletonAsync(() async  => LocationSearcher());
}
