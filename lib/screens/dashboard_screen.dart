import 'package:app/widgets/data_card.dart';
import 'package:app/widgets/info_card.dart';
import 'package:app/widgets/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: ListView(
        children: [
          const SearchContainer(screenName: "Dashboard"),
          Container(
            margin: const EdgeInsets.only(bottom: 5),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(children: [
              const DataCard(),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      mainInfoCard(context),
                      Column(children: [
                        rightInfoCard(context),
                        rightInfoCard(context)
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
