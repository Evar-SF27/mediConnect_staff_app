import 'package:app/views/consulation.dart';
import 'package:app/widgets/graph_card.dart';
import 'package:app/widgets/info_card.dart';
import 'package:app/widgets/search.dart';
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
      child: Column(
        children: [
          const SearchContainer(screenName: "Consultation"),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.all(10),
            child: Column(children: [
              const GraphDataCard(),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ViewConsultation()
                      // Column(children: [
                      //   rightInfoCard(context),
                      //   rightInfoCard(context)
                      // ])
                    ],
                  )),
            ]),
          )
        ],
      ),
    ));
  }
}
