import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slami_app/core/style/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../provider/my-provider.dart';

class SephaView extends StatefulWidget {
  SephaView({super.key});

  @override
  State<SephaView> createState() => _SephaViewState();
}

class _SephaViewState extends State<SephaView> {
  int Counter = 0;

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProviderApp>(context);
    return Center(
      child: Column(
        children: [
          Image.asset(
            pro.getSepha(),
          ),
          SizedBox(
            height: 10,
          ),
          Text(AppLocalizations.of(context)!.sebha_counter),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
                child: Text(
              "$Counter",
              style: TextStyle(
                fontSize: 50,

              ),
            )),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            width: 180,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(20), right: Radius.circular(20)),
            ),
            child: Center(
                child: InkWell(
                    onTap: () {
                      setState(() {
                        Counter++;
                      });
                    },
                    child: Text(
                      AppLocalizations.of(context)!.subhanAllah,
                      style: TextStyle(fontSize: 30),
                    ))),
          ),
        ],
      ),
    );
  }
}
