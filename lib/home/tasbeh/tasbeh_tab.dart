import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:islami_sun_c6/Providers.dart/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  double angle = 0;
  int couter = 0;
  int tasbehindex = 0;
  List<String> athkar = [
    "الحمد الله",
    "استغفر الله ",
    "سبحان الله",
    " الله اكبر",
  ];
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of(context);
    var size = MediaQuery.of(context).size;

    return Container(
      color: Colors.transparent,
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: size.height * .4,
              child: Stack(
                children: [
                  Positioned(
                    left: size.width * .49,
                    child: Image.asset(settingsProvider.isDark()
                        ? "assets/images/Dark_head_of_seb7a.png"
                        : "assets/images/Ligth_head_of_seb7a.png"),
                  ),
                  Positioned(
                    right: size.width * .20,
                    top: size.height * .096,
                    child: InkWell(
                      onTap: () {
                        rotate();
                        setState(() {});
                      },
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      child: Transform.rotate(
                        angle: angle,
                        child: Image.asset(settingsProvider.isDark()
                            ? "assets/images/Dark_body_of_seb7a.png"
                            : "assets/images/Ligth_body_of_seb7a.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Text(
              AppLocalizations.of(context)!.praises,
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * .05,
            ),
            Container(
              alignment: AlignmentDirectional.center,
              width: 70,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Theme.of(context).hoverColor,
              ),
              child: Text(
                "$couter",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            SizedBox(
              height: size.height * .05,
            ),
            Container(
              alignment: AlignmentDirectional.center,
              width: 140,
              height: 50,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(25)),
              child: Text(
                athkar[tasbehindex],
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }

  void rotate() {
    angle -= 3;
    couter++;
    if (couter >= 33) {
      couter = 0;
      tasbehindex++;
      if (tasbehindex >= athkar.length - 1) {
        tasbehindex = 0;
      }
      tasbehindex++;
    }
  }
}
