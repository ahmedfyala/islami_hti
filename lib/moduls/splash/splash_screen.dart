import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../layout/home_layout.dart';
import '../../provider/my-provider.dart';
import 'package:provider/provider.dart';


class SplashScreen extends StatefulWidget {
   SplashScreen({super.key});

  static const String routeName = 'splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProviderApp>(context);
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(HomeLayout.routeName);
    });
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
           image: AssetImage(
            provider.getSplash(),
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
