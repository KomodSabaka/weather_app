import 'package:flutter/material.dart';

class LocationDateTimeModule extends StatelessWidget {
  const LocationDateTimeModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(
        width: 510,
        height: 330,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            offset: Offset(10, 10),
            blurRadius: 4,
            color: Color(0x60000000),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'City',
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontSize: 36),
          ),
          Text(
            '22:00',
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontSize: 96),
          ),
          Text(
            'Thursday, 31 Aug',
            style:
                Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
