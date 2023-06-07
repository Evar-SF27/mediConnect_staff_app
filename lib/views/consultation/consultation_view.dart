import 'package:app/views/consultation/add_consultation.dart';
import 'package:app/views/consultation/consultation_nav.dart';
import 'package:app/views/consultation/consultation_stats.dart';
import 'package:app/views/consultation/view_consultation.dart';
import 'package:flutter/material.dart';

class ConsultationView extends StatefulWidget {
  const ConsultationView({Key? key}) : super(key: key);

  @override
  State<ConsultationView> createState() => _ConsultationViewState();
}

class _ConsultationViewState extends State<ConsultationView> {
  int currentIndex = 0;

  void selectScreen(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final List screens = [
    const AddConsultation(),
    const ViewConsultation(),
    const ConsultationStatistics()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Row(
        children: [
          ConsultationNavigation(onButtonPressed: selectScreen),
          screens[currentIndex]
        ],
      ),
    ));
  }
}
