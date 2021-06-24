import 'package:flutter/material.dart';
import 'package:weather/screens/loading_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        //   primaryColor: Colors.white,
        scaffoldBackgroundColor: Color(0XFF00C6FE),
      ),
      home: LoadingScreen(),
    );
  }
}
