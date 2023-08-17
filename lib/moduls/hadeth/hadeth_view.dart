import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slami_app/moduls/hadeth/ahadeth_details.dart';
import 'package:slami_app/core/style/my_theme.dart';
import 'package:localization/localization.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'hadeth_model.dart';

class Hadeth_veiw extends StatefulWidget {
  Hadeth_veiw({super.key});

  @override
  State<Hadeth_veiw> createState() => _Hadeth_veiwState();
}

class _Hadeth_veiwState extends State<Hadeth_veiw> {
  List<HadethModel> ahadethData = [];

  @override
  Widget build(BuildContext context) {
    if (ahadethData.isEmpty) {
      loadHadeth();
    }
    return Column(
      children: [
        Image.asset("assets/images/hadeth_logo.png"),
        Divider(
          color: Theme.of(context).dividerColor,
          thickness: 2,
        ),
        Text(AppLocalizations.of(context)!.ahadeth),
        Divider(
          color: Theme.of(context).dividerColor,
          thickness: 2,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              color: Theme.of(context).dividerColor,
              thickness: 1,
              endIndent: 40,
              indent: 40,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      HadethDetails.routeName,
                      arguments: ahadethData[index],
                    );
                  },
                  child: Center(
                      child: Text(
                    ahadethData[index].name,
                    style: Theme.of(context).textTheme.bodySmall,
                  )));
            },
            itemCount: ahadethData.length,
          ),
        ),
      ],
    );
  }

  void loadHadeth() async {
    String file = await rootBundle.loadString("assets/files/ahadeth .txt");
    List<String> ahadeth = file.split("#");

    for (int i = 0; i < ahadeth.length; i++) {
      List<String> lines = ahadeth[i].trim().split("\n");
      String hadethTitle = lines[0];
      print(hadethTitle);
      lines.removeAt(0);
      List<String> hadethContent = lines;
      ahadethData.add(HadethModel(hadethTitle, hadethContent));
    }
    setState(() {});
  }
}
