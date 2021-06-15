import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WeatherDay extends StatelessWidget {
  WeatherDay({required this.icon, this.day});

  IconData icon;
  String? day;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        //   color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(icon),
          Text(day!.substring(0, 3).toLowerCase()),
        ],
      ),
    );
  }
}
