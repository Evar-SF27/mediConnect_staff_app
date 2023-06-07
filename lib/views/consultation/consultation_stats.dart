import 'package:app/utils/colors.dart';
import 'package:app/utils/screen.dart';
import 'package:app/views/consultation/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConsultationStatistics extends StatefulWidget {
  const ConsultationStatistics({super.key});

  @override
  State<ConsultationStatistics> createState() => _ConsultationStatisticsState();
}

class _ConsultationStatisticsState extends State<ConsultationStatistics> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: ListView(
        children: const [
          SearchConsultationContainer(screenName: "Consultation Stats"),
        ],
      ),
    ));
  }
}
