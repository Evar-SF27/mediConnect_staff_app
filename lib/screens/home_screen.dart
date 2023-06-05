import 'package:app/utils/colors.dart';
import 'package:app/utils/screen.dart';
import 'package:app/widgets/input.dart';
import 'package:app/widgets/side.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dashboard_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> screens = [
    const DashboardScreen(),
    // const ConsultationScreen(),
    // const LaboratoryScreen(),
    // const AdmissionScreen(),
    // const StaffScreen(),
    // const DoctorScreen(),
    // const PatientScreen(),
    // const PaymentScreen(),
    // const StatisticsScreen(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Row(
        children: [const SideBar(), const DashboardScreen()],
      ),
    ));
  }
}
