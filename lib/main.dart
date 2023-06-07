// import 'package:app/screens/login_screen.dart';
import 'package:app/screens/home_screen.dart';
import 'package:app/utils/colors.dart';
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

ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
    primaryColor: AppColors.mainColor,
    cardColor: Colors.white,
    scaffoldBackgroundColor: AppColors.backColor);

ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.dark,
    primaryColor: AppColors.mainColor,
    cardColor: AppColors.opaqueBackground,
    scaffoldBackgroundColor: const Color.fromARGB(255, 26, 26, 26));

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MediConnect',
        debugShowCheckedModeBanner: false,
        theme: iconBool ? darkTheme : lightTheme,
        home: Scaffold(
          body: ConstrainedBox(
              constraints: const BoxConstraints(minWidth: 700),
              child: const HomeScreen()),
        ));
  }
}
