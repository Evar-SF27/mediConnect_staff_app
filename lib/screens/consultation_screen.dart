import 'package:app/views/consultation/consulation.dart';
import 'package:app/views/consultation/consultation_view.dart';
import 'package:app/widgets/button.dart';
import 'package:app/widgets/graph_card.dart';
import 'package:app/widgets/info_card.dart';
import 'package:app/widgets/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConsultationScreen extends StatefulWidget {
  const ConsultationScreen({super.key});

  @override
  State<ConsultationScreen> createState() => _ConsultationScreenState();
}

class _ConsultationScreenState extends State<ConsultationScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: ListView(
        children: [
          const SearchContainer(screenName: "Consultation"),
          Container(
            margin: const EdgeInsets.only(bottom: 5),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(children: [
              const GraphDataCard(),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ViewConsultation(),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            graphInfoCard(context),
                            addButton(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ConsultationView()));
                                },
                                icon: CupertinoIcons.add_circled,
                                text: "New Consultation")
                          ])
                    ],
                  )),
            ]),
          )
        ],
      ),
    ));
  }
}
