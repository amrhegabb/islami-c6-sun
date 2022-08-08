import 'package:flutter/material.dart';
import 'package:islami_sun_c6/home/hadeth/hadeth_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'hadeth-details';

  @override
  Widget build(BuildContext context) {
    var hadeth = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/main_background.png"),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(hadeth.title),
          ),
          body: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColorLight,
              borderRadius: BorderRadius.circular(12),
            ),
            margin: EdgeInsets.symmetric(vertical: 64, horizontal: 12),
            child: SingleChildScrollView(
              child: Text(
                hadeth.content,
                textDirection: TextDirection.rtl,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
        ));
  }
}
