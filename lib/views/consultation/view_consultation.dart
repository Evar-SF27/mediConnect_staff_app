import 'package:app/utils/colors.dart';
import 'package:app/utils/screen.dart';
import 'package:app/views/consultation/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewConsultation extends StatefulWidget {
  const ViewConsultation({super.key});

  @override
  State<ViewConsultation> createState() => _ViewConsultationState();
}

class _ViewConsultationState extends State<ViewConsultation> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: ListView(
        children: const [
          SearchConsultationContainer(screenName: "View Consultation"),
        ],
      ),
    ));
  }
}
