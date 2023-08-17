import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slami_app/moduls/hadeth/hadeth_view.dart';
import 'package:slami_app/moduls/quran/quran_view.dart';
import 'package:slami_app/moduls/radio/radio_view.dart';
import 'package:slami_app/moduls/splash/splash_screen.dart';
import '../moduls/sepha/sepha_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../moduls/settings/settinge_view.dart';
import 'package:localization/localization.dart';
import 'package:provider/provider.dart';
import '../provider/my-provider.dart';

class HomeLayout extends StatefulWidget {
  HomeLayout({super.key});

  static const String routeName = 'Home';

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;

  List<Widget> screenWidgets = [
    RadioView(),
    SephaView(),
    Hadeth_veiw(),
    QuranView(),
    SttingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProviderApp>(context);
    return Container(
      child: Stack(
        children: [
          Image.asset(
            provider.getBackground(),
            width: double.infinity,
            fit: BoxFit.fill,
          ), Scaffold(
            appBar: AppBar(
              title: Text(AppLocalizations.of(context)!.islamiTitle),

            ),
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                canvasColor: Theme.of(context).primaryColor,
              ),
              child: BottomNavigationBar(
                currentIndex: selectedIndex,
                onTap: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                items: [
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/icon_radio.png'),
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/icon_sebha.png'),
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/icon_hadeth.png'),
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/icon_quran.png'),
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings), label: ''),
                ],
              ),
            ),
            body: screenWidgets[selectedIndex],
          ),
        ],
      ),
    );
  }
}
