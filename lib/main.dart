import 'package:app/screens/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

bool iconBool = false;
IconData iconLight = Icons.wb_sunny;
IconData iconDark = Icons.nights_stay;

ThemeData lightTheme =
    ThemeData(primarySwatch: Colors.blue, brightness: Brightness.light);

ThemeData darkTheme =
    ThemeData(primarySwatch: Colors.blue, brightness: Brightness.dark);

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: iconBool ? darkTheme : lightTheme,
        home: const LoginScreen());
  }
}
