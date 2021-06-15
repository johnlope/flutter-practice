import 'package:flutter/material.dart';

const kTemperatureTextStyle = TextStyle(
  fontSize: 100.0,
  // fontWeight: FontWeight.bold,
);

const kIconWeatherTextStyle = TextStyle(
  fontSize: 170.0,
  fontWeight: FontWeight.bold,
);

const kDateTextStyle = TextStyle(
  fontSize: 15.0,
  fontWeight: FontWeight.bold,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
  hintText: 'Enter City Name',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(5.0),
    ),
    borderSide: BorderSide.none,
  ),
);
