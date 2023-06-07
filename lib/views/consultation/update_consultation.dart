import 'package:app/views/consultation/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpdateConsultation extends StatefulWidget {
  const UpdateConsultation({super.key});

  @override
  State<UpdateConsultation> createState() => _UpdateConsultationState();
}

class _UpdateConsultationState extends State<UpdateConsultation> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: ListView(
        children: const [
          SearchConsultationContainer(screenName: "Update Consultation"),
        ],
      ),
    ));
  }
}
