import 'package:flutter/material.dart';
import 'package:weather/utilities/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CityNameScreen extends StatefulWidget {
  CityNameScreen({Key? key}) : super(key: key);

  @override
  _CityNameScreenState createState() => _CityNameScreenState();
}

class _CityNameScreenState extends State<CityNameScreen> {
  String cityName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('images/city_background.jpg'),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 25.0,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: kTextFieldInputDecoration.copyWith(
                    hintText: AppLocalizations.of(context)!.enterCityName,
                  ),
                  onChanged: (value) {
                    cityName = value;
                  },
                ),
              ),
              Material(
                elevation: 5.0,
                color: Colors.blue[400],
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pop(context, cityName);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    AppLocalizations.of(context)!.getWeatherCity,
                    style: kButtonTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
