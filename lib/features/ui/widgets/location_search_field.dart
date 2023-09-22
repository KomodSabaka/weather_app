import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/features/providers/theme_provider.dart';
import 'package:weather_app/features/blocs/weather_bloc/weather_bloc.dart';
import '../../../common/constants/assets_paths.dart';

class LocationSearchField extends StatefulWidget {
  const LocationSearchField({super.key});

  @override
  State<LocationSearchField> createState() => _LocationSearchFieldState();
}

class _LocationSearchFieldState extends State<LocationSearchField> {
  late final TextEditingController _searchController;

  void _searchCity(String city) {
    BlocProvider.of<WeatherBloc>(context).add(GetForecastEvent(location: city));
  }

  @override
  void initState() {
    _searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(40),
        border: themeProvider.nowLightTheme
            ? Border.all(width: 1, color: Colors.black)
            : null,
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 40,
            color: Color(0x25000000),
          ),
        ],
      ),
      child: Row(
        children: [
          const SizedBox(width: 24),
          const Image(image: AssetImage(AssetPaths.searchIcon)),
          Expanded(
            child: TextField(
              controller: _searchController,
              onSubmitted: (city) => _searchCity(city),
              textInputAction: TextInputAction.done,
              style: Theme.of(context).textTheme.bodyMedium,
              decoration: const InputDecoration(
                hintText: 'Search for your preffered city...',
                constraints: BoxConstraints(
                  maxHeight: 62,
                  maxWidth: 800,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
