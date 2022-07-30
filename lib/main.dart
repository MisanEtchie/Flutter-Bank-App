import 'package:flutter/material.dart';
import 'package:flutter_bank_app/screens/home.dart';
import 'package:flutter_bank_app/screens/notifications.dart';
import 'package:flutter_bank_app/screens/onboarding.dart';
import 'package:flutter_bank_app/screens/send.dart';
import 'package:flutter_bank_app/screens/user.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(
      MaterialApp(debugShowCheckedModeBanner: false, home: const Onboarding()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final screens = [
    Home(),
    Send(),
    Notifications(),
    User(),
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: IndexedStack(
            index: _selectedIndex,
            children: screens,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex, //New
            onTap: _onItemTapped,

            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: Colors.black,

            //unselectedItemColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.wallet,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.commentsDollar,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.solidBell), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.solidUser), label: ""),
            ],
          ),
        ),
      ),
    );
  }
}
