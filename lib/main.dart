import 'package:flutter/material.dart';
import 'package:islami_sun_c6/Providers.dart/settings_provider.dart';
import 'package:islami_sun_c6/home/hadeth/hadeth_details.dart';
import 'package:islami_sun_c6/home/quran/sura_details.dart';
import 'package:islami_sun_c6/home_screen.dart';
import 'package:islami_sun_c6/my_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) => SettingsProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  late SettingsProvider settingsProvider;

  @override
  Widget build(BuildContext context) {
    settingsProvider = Provider.of<SettingsProvider>(context);
    getvalueFromSharedprerances();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.DarkTheme,
      themeMode: settingsProvider.currentTheme,
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
      locale: Locale(settingsProvider.currentLang),
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (_) => HadethDetailsScreen()
      },
      initialRoute: HomeScreen.routeName,
    );
  }

  Future<void> getvalueFromSharedprerances() async {
    final pref = await SharedPreferences.getInstance();
    settingsProvider.changeLanguage(pref.getString("lang") ?? "en");
    settingsProvider.changeTheme(
        pref.getBool("Theme") ?? true ? ThemeMode.dark : ThemeMode.light);
  }
}
