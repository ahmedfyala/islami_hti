import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:slami_app/core/style/my_theme.dart';
import 'package:slami_app/moduls/quran/sura_model.dart';

import '../../provider/my-provider.dart';

class SuraDitals extends StatefulWidget {
  static const String routeName = "suraditals";

  @override
  State<SuraDitals> createState() => _SuraDitalsState();
}

class _SuraDitalsState extends State<SuraDitals> {
  List<String> verse = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    var provider = Provider.of<MyProviderApp>(context);
    if (verse.isEmpty) {
      loadFiles(args.index);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(provider.getBackground()), fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.name,
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider(
                    color: MyThemeData.primaryColor,
                  );
                },
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Center(
                          child: Text(
                        verse[index],
                        textAlign: TextAlign.center,
                        style:  Theme.of(context).textTheme.titleMedium,
                      )),
                    ],
                  );
                },
                itemCount: verse.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void loadFiles(int index) async {
    String file = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> suraLines = file.split("\n");
    verse = suraLines;
    print(suraLines);
    setState(() {});
  }
}
