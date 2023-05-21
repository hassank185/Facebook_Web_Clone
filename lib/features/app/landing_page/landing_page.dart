import 'package:facebook_web_clone/features/global/theme/theme.dart';
import 'package:facebook_web_clone/features/home_page/presentation/pages/home_page.dart';
import 'package:facebook_web_clone/features/navbar/nav_bar.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget selectedPage;

    switch (_selectedIndex) {
      case 0:
        selectedPage = HomePage();
        break;
    // case 1:
    //   selectedPage = MyNetWorkPage();
    //   break;
    // case 2:
    //   selectedPage = JobsPage();
    //   break;
    // case 3:
    //   selectedPage = MessagingPage();
    //   break;
    // case 4:
    //   selectedPage = NotificationPage();
    //   break;
      default:
        selectedPage = HomePage();
    }

    return Scaffold(
      backgroundColor: bodyColor,
      body: Stack(
        children: [
          Column(
            children: [
              NavBarWidget(
                onNavItemTapped: _onNavItemTapped,
                selectedIndex: _selectedIndex,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: selectedPage,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
