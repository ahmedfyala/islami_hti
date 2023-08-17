import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../core/style/my_theme.dart';
import '../../provider/my-provider.dart';

class ShowLanguageModelSheet extends StatefulWidget {
  const ShowLanguageModelSheet({super.key});

  @override
  State<ShowLanguageModelSheet> createState() => _ShowLanguageModelSheetState();
}

class _ShowLanguageModelSheetState extends State<ShowLanguageModelSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProviderApp>(context);
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                provider.changeLanguage("en");
                Navigator.pop(context);
              },
              child: ShowLanguageSelected(
                  "English", provider.AppLanguage == 'en' ? true : false)),
          SizedBox(
            height: 15,
          ),
          InkWell(
              onTap: () {
                provider.changeLanguage("ar");
                Navigator.pop(context);
              },
              child: ShowLanguageSelected(
                "العربيه",
                provider.AppLanguage == 'ar' ? true : false,
              ))
        ],
      ),
    );
  }

  Widget ShowLanguageSelected(String text, bool selected) {
    if (selected) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$text',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Theme.of(context).primaryColorDark)),
          Icon(Icons.check, color: Theme.of(context).primaryColorDark),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$text', style: Theme.of(context).textTheme.bodyMedium),
          Icon(Icons.check,),
        ],
      );
    }
  }
}
