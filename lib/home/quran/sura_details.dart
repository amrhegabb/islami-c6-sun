import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_sun_c6/Providers.dart/settings_provider.dart';
import 'package:islami_sun_c6/my_theme.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura-details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> suradetails = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    SettingsProvider settingsprovider = Provider.of<SettingsProvider>(context);
    if (suradetails.isEmpty) {
      getsuradetails(args.index);
    }
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  settingsprovider.currentTheme == ThemeMode.light
                      ? 'assets/images/main_background.png'
                      : 'assets/images/bg.png',
                ),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.name),
          ),
          body: Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "سورة ${args.name}",
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: suradetails.length,
                    itemBuilder: ((context, index) => Card(
                          color: index.isEven
                              ? Theme.of(context).cardColor
                              : Theme.of(context).primaryColorDark,
                          elevation: 8,
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: RichText(
                              textAlign: TextAlign.right,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: "${suradetails[index]} ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5!
                                          .copyWith(fontFamily: "Lateef")),
                                  WidgetSpan(
                                    child: Stack(
                                      alignment: AlignmentDirectional.center,
                                      children: [
                                        ImageIcon(
                                          const AssetImage(
                                              "assets/images/versesSperator.png"),
                                          color: settingsprovider.isDark()
                                              ? MyTheme.DarkPrimaryColor
                                              : Colors.black,
                                        ),
                                        Text(
                                          "${index + 1}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  getsuradetails(int index) async {
    var filecontent =
        await rootBundle.loadString("assets/files/${index + 1}.txt");
    suradetails = filecontent.trim().split("\r\n");

    setState(() {});
  }
}

class SuraDetailsArgs {
  int index;
  String name;

  SuraDetailsArgs(this.index, this.name);
}
