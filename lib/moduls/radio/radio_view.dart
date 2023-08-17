import 'package:flutter/material.dart';
import 'package:slami_app/core/style/my_theme.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          height: 280,
          child: Column(
             mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              Image.asset("assets/images/radio_image.png"),
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.skip_previous,color: MyThemeData.primaryColor,size: 31.5),
            SizedBox(
              width: 30,
            ),
            Icon(Icons.play_arrow,color: MyThemeData.primaryColor,size: 31.5),
            SizedBox(
              width: 30,
            ),
            Icon(Icons.skip_next,color: MyThemeData.primaryColor,size: 31.5),
          ],
        ),


      ],
    );
  }
}
