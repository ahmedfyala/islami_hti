import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slami_app/core/style/my_theme.dart';
import 'package:slami_app/moduls/hadeth/hadeth_model.dart';

import '../../provider/my-provider.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "hadethdetail";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    var provider = Provider.of<MyProviderApp>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(provider.getBackground()),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.name),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(vertical: 11, horizontal: 22),
          decoration: BoxDecoration(
              color: Theme.of(context).focusColor,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: MyThemeData.primaryColor)),
          child: ListView.builder(
            itemBuilder: (context, index) => Text(
              args.content[index],
              textAlign: TextAlign.center,
              style:Theme.of(context).textTheme.titleMedium,
            ),
            itemCount: args.content.length,
          ),
        ),
      ),
    );
  }
}
