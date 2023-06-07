import 'package:app/utils/colors.dart';
import 'package:app/utils/screen.dart';
import 'package:app/views/consultation/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddConsultation extends StatefulWidget {
  const AddConsultation({super.key});

  @override
  State<AddConsultation> createState() => _AddConsultationState();
}

class _AddConsultationState extends State<AddConsultation> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: ListView(
        children: const [
          SearchConsultationContainer(screenName: "Add Consultation"),
        ],
      ),
    ));
  }
}
