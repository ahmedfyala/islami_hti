import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slami_app/moduls/splash/splash_screen.dart';
import 'package:slami_app/provider/my-provider.dart';
import 'moduls/hadeth/ahadeth_details.dart';
import 'layout/home_layout.dart';
import 'core/style/my_theme.dart';
import 'moduls/quran/sura_ditals.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(ChangeNotifierProvider(
      create: (context) {
        return MyProviderApp();
      },
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProviderApp>(context);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        //AppLocalizatio.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      locale: Locale(provider.AppLanguage),//en
      initialRoute: SplashScreen.routeName,
      routes: {
        HomeLayout.routeName: (context)=>HomeLayout(),
        SplashScreen.routeName:(context) =>  SplashScreen(),
        SuraDitals.routeName:(context) =>  SuraDitals(),
        HadethDetails.routeName:(context) =>  HadethDetails(),
      },
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.themeMode,
      // MyThemeData.lightTheme,

    );
  }

}


