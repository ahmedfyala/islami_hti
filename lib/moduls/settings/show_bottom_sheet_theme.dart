import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../provider/my-provider.dart';


class ShowThemeBottomSheet extends StatefulWidget {
  const ShowThemeBottomSheet({Key? key}) : super(key: key);

  @override
  State<ShowThemeBottomSheet> createState() => _ShowThemeBottomSheetState();
}

class _ShowThemeBottomSheetState extends State<ShowThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProviderApp>(context);
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(

        children: [
          InkWell(
              onTap: (){
           pro.changeTheme(ThemeMode.light);
           Navigator.pop(context);
              },
              child: showThemeSelected("light",pro.themeMode==ThemeMode.light?true:false)),
          SizedBox(height: 15,),
          InkWell(
              onTap: (){
                pro.changeTheme(ThemeMode.dark);
                Navigator.pop(context);
              },
              child: showThemeSelected("dark",pro.themeMode==ThemeMode.light?false:true)),
        ],
      ),
    );
  }

  Widget showThemeSelected(String text,bool selected){
    if(selected){
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$text',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Theme.of(context).primaryColorDark
          ),),
          Icon(Icons.check,color: Theme.of(context).primaryColorDark,),
        ],
      );
    }else{

     return  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$text',style: Theme.of(context).textTheme.bodyLarge),
          Icon(Icons.check),
        ],
      );
    }
  }

}
