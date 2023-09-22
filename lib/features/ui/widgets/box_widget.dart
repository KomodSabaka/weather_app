import 'package:flutter/material.dart';

class BoxWidget extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;


  const BoxWidget({
    super.key,
    required this.width,
    required this.height,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        width: width,
        height: height,
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
      child: child,
    );
  }
}
