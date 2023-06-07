import 'package:app/views/payments.dart';
import 'package:app/widgets/graph_card.dart';
import 'package:app/widgets/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: ListView(
        children: [
          const SearchContainer(screenName: "Payments"),
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
                      ViewPayments()
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
