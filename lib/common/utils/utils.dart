import 'package:flutter/material.dart';

void showSnakeBar({required BuildContext context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    ),
  );
}

bool isDaytime(String timeString) {
  List<String> timeParts = timeString.split(':');
  if (timeParts.length != 2) {
    throw ArgumentError("Некорректный формат времени: $timeString");
  }

  int? hours = int.tryParse(timeParts[0]);
  int? minutes = int.tryParse(timeParts[1]);

  if (hours == null || minutes == null) {
    throw ArgumentError("Некорректное время: $timeString");
  }
  bool isDay = hours >= 6 && hours < 18;

  return isDay;
}

