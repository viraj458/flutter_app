import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home.dart';
import 'package:flutter_app/pages/routes.dart';
import 'package:flutter_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;

  void toggleDarkMode(bool newState) {
    setState(() {
      isDark = newState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      // initialRoute: Home.routeName,
      routes: routes,
      home: Home(
        isDark: isDark,
        toggleDarkMode: toggleDarkMode,
      ),
    );
  }
}

/*

 */