import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
    if (suradetails.isEmpty) {
      getsuradetails(args.index);
    }
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/main_background.png',
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
              color: Theme.of(context).primaryColorLight,
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
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).hintColor,
                          elevation: 8,
                          child: RichText(
                            textAlign: TextAlign.right,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "${suradetails[index]} ",
                                    style:
                                        Theme.of(context).textTheme.headline5),
                                WidgetSpan(
                                  child: Stack(
                                    alignment: AlignmentDirectional.center,
                                    children: [
                                      const ImageIcon(
                                        AssetImage(
                                            "assets/images/versesSperator.png"),
                                      ),
                                      Text(
                                        "${{index + 1}.toString()}",
                                        style:
                                            Theme.of(context).textTheme.caption,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
