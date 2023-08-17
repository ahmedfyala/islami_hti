import 'package:flutter/material.dart';
import 'package:slami_app/moduls/settings/show_bottom_sheet_theme.dart';
import 'package:slami_app/moduls/settings/show_language_model_sheet.dart';
import 'package:provider/provider.dart';
import 'package:slami_app/provider/my-provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//import 'package:shared_preferences/shared_preferences.dart';
class SttingsView extends StatefulWidget {
  SttingsView({super.key});

  @override
  State<SttingsView> createState() => _SttingsViewState();
}

class _SttingsViewState extends State<SttingsView> {


  @override
  Widget build(BuildContext context) {
    var pros = Provider.of<MyProviderApp>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.language),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              ShowBottomSheetLanguage();
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12,horizontal: 14),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Theme.of(context).canvasColor,
                  border: Border.all(color: Theme.of(context).primaryColor)),
              child: Text(pros.AppLanguage=='en'?'English':'العربيه'),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(AppLocalizations.of(context)!.theme),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              ShowBottomSheetTheme();
            },
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 12,horizontal: 14),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Theme.of(context).canvasColor,
                    border: Border.all(color: Theme.of(context).primaryColor)),
                child: Text(
                  pros.themeMode== ThemeMode.light?'Light':'Dark',
                  style: Theme.of(context).textTheme.bodyMedium,
                )),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  void ShowBottomSheetTheme() {
    showModalBottomSheet(
        backgroundColor: Theme.of(context).canvasColor,
        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(16),),
        context: context,
        builder: (context) {
          return ShowThemeBottomSheet();
        });
  }

  void ShowBottomSheetLanguage() {
    showModalBottomSheet(
       backgroundColor: Theme.of(context).canvasColor,
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(16),),
        context: context,
        builder: (context) {
          return ShowLanguageModelSheet();
        });
  }
}
