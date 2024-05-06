import 'package:app_taxi/screens/main_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
      routes: {
        MainScreen.id : (context)=> const MainScreen(),
      },
    );
  }
}
