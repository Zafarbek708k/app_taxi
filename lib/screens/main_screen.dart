import 'package:app_taxi/custom_widgets/bottom_nav_bar.dart';
import 'package:app_taxi/screens/home.dart';
import 'package:app_taxi/screens/notes.dart';
import 'package:app_taxi/screens/settings.dart';
import 'package:app_taxi/screens/support.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import '../custom_widgets/credit_card.dart';
import '../custom_widgets/custom_container.dart';
import '../custom_widgets/custom_drawer.dart';
import '../custom_widgets/service_buttons.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  static const String id = "/main_screen";

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  List <Widget> pages = [
    const Home(), const Notes(),const Support(), const Setting(),
  ];
  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
    buildSignature: 'Unknown',
    installerStore: 'Unknown',
  );

  Future<void> _initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

  @override
  void initState() {
    super.initState();
    _initPackageInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(49, 49, 49, 1.0),
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white10,
        leadingWidth: 75,
        leading: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            child: const CircleAvatar(backgroundColor: CupertinoColors.white)),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Добрый день",
                style: TextStyle(fontSize: 12, color: Colors.grey)),
            Text("Дмитрий Сергеевич",
                style: TextStyle(fontSize: 14, color: Colors.grey)),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      drawer: drawer(packageInfo: _packageInfo),
      body: pages[currentIndex],
      bottomNavigationBar: bottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}
