import 'package:app/utils/colors.dart';
import 'package:app/utils/responsive.dart';
import 'package:app/utils/screen.dart';
import 'package:app/widgets/stateful_widget.dart';
import 'package:flutter/material.dart';

class ViewConsultation extends StatefulWidget {
  const ViewConsultation({super.key});

  @override
  State<ViewConsultation> createState() => _ViewConsultationState();
}

class _ViewConsultationState extends State<ViewConsultation> {
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.only(top: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
            padding: const EdgeInsets.all(15),
            width: ResponsiveWidget.isLargeScreen(context)
                ? screenWidth(context) * 0.42
                : screenWidth(context) * 0.51,
            height: screenHeight(context) * 0.54,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Text("Consultation History",
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: AppColors.mainColor))
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Column(
                        children: [
                          TileModel(),
                          TileModel(),
                          TileModel(),
                          TileModel(),
                          TileModel(),
                          TileModel(),
                          TileModel(),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}
