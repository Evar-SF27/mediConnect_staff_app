import 'package:app/utils/colors.dart';
import 'package:app/utils/responsive.dart';
import 'package:app/utils/screen.dart';
import 'package:app/views/consultation/consultation_tile.dart';
import 'package:app/views/consultation/search.dart';
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
      child: ListView(children: [
        const SearchConsultationContainer(screenName: "View Consultation"),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Card(
                margin: const EdgeInsets.only(top: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                    padding: const EdgeInsets.all(15),
                    width: ResponsiveWidget.isLargeScreen(context)
                        ? screenWidth(context) * 0.42
                        : screenWidth(context) * 0.51,
                    height: screenHeight(context) * 0.88,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              SizedBox(width: 10),
                              Text("Consultation List",
                                  style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.mainColor))
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            decoration: const BoxDecoration(
                                color: AppColors.lightColor),
                            child: ListTile(
                                title: const Text("Patient Info",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                                trailing: SizedBox(
                                  width: ResponsiveWidget.isLargeScreen(context)
                                      ? screenWidth(context) * 0.52
                                      : screenWidth(context) * 0.55,
                                  child: const Padding(
                                      padding: EdgeInsets.only(top: 15),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Column(
                                                children: [
                                                  Text(
                                                      "Consultation Information",
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      )),
                                )),
                          ),
                          const Row(
                            children: [
                              Column(
                                children: [
                                  ConsultationTile(),
                                  ConsultationTile(),
                                  ConsultationTile(),
                                  ConsultationTile(),
                                  ConsultationTile(),
                                  ConsultationTile(),
                                  ConsultationTile(),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )))),
      ]),
    ));
  }
}
