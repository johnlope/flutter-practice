import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather/components/weather_day.dart';
import 'package:weather/services/weather.dart';
import 'package:flutter/material.dart';
import 'package:weather/utilities/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'city_screen.dart';

class LocationScreen extends StatefulWidget {
  LocationScreen({this.locationWeather});

  final locationWeather;

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  int temperature = 0;
  int condition = 0;
  String cityName = "";
  String weatherIcon = "";
  String weatherMessage = "";

  WeatherModel weather = WeatherModel();
  var now = DateTime.now();

  @override
  void initState() {
    super.initState();
    updateUI(widget.locationWeather);
  }

  void updateUI(dynamic weatherData) {
    setState(() {
      if (weatherData != null) {
        var temp = weatherData['main']['temp'];
        condition = weatherData['weather'][0]['id'];
        cityName = weatherData['name'];
        print(temp);
        temperature = temp.toInt();
        weatherIcon = weather.getWeatherIcon(condition);
        weatherMessage = weather.getMessage(temperature.toInt());
      }
    });
  }

  void getNewWeatherData(String cityName) async {
    final weatherData = await weather.getCityWeather(cityName);
    updateUI(weatherData);
  }

  String getDayName(int weekday) {
    List<String> days = [
      AppLocalizations.of(context)!.monday,
      AppLocalizations.of(context)!.tuesday,
      AppLocalizations.of(context)!.wednesday,
      AppLocalizations.of(context)!.thursday,
      AppLocalizations.of(context)!.friday,
      AppLocalizations.of(context)!.saturday,
      AppLocalizations.of(context)!.sunday
    ];
    int index =
        (weekday > 0 && weekday <= days.length) ? weekday - 1 : weekday - 8;

    return days[index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return CityNameScreen();
                    }),
                  );
                  if (result != null) {
                    getNewWeatherData(result);
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.mapMarkerAlt,
                      size: 20.0,
                    ),
                    Text(
                      ' $cityName'.toUpperCase(),
                      style: kDateTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '$temperature',
                      style: kTemperatureTextStyle,
                    ),
                    Text(
                      ' °',
                      style: kTemperatureTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Center(
                child: Text(
                  '$weatherIcon',
                  style: kIconWeatherTextStyle,
                ),
              ),
            ),
            Expanded(
              child: Text(
                getDayName(now.weekday).toUpperCase(),
                style: kDateTextStyle,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              height: 90.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WeatherDay(
                    icon: weather.getWeatherAwesomIcon(condition),
                    day: AppLocalizations.of(context)!.today,
                  ),
                  WeatherDay(
                    icon: FontAwesomeIcons.pooStorm,
                    day: getDayName(now.weekday + 1),
                  ),
                  WeatherDay(
                    icon: FontAwesomeIcons.snowflake,
                    day: getDayName(now.weekday + 2),
                  ),
                  WeatherDay(
                    icon: FontAwesomeIcons.cloudSun,
                    day: getDayName(now.weekday + 3),
                  ),
                  WeatherDay(
                    icon: FontAwesomeIcons.cloudSunRain,
                    day: getDayName(now.weekday + 4),
                  ),
                  WeatherDay(
                    icon: FontAwesomeIcons.sun,
                    day: getDayName(now.weekday + 5),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
