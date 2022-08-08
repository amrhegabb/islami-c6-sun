import 'package:flutter/material.dart';
import 'package:islami_sun_c6/home/hadeth/hadeth_details.dart';
import 'package:islami_sun_c6/home/quran/sura_details.dart';
import 'package:islami_sun_c6/home_screen.dart';
import 'package:islami_sun_c6/my_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.DarkTheme,
      themeMode: ThemeMode.light,
      title: 'Islami',
      // ignore: prefer_const_literals_to_create_immutables
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''),
        Locale('ar', ''),
      ],
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (_) => HadethDetailsScreen()
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
