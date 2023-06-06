import 'package:app/utils/colors.dart';
import 'package:app/utils/screen.dart';
import 'package:app/widgets/payment_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewPayments extends StatefulWidget {
  const ViewPayments({super.key});

  @override
  State<ViewPayments> createState() => _ViewPaymentsState();
}

class _ViewPaymentsState extends State<ViewPayments> {
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.only(top: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
            padding: const EdgeInsets.all(15),
            width: screenWidth(context) * 0.42,
            height: screenHeight(context) * 0.54,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  const Row(
                    children: [
                      SizedBox(width: 10),
                      Text("Today's Transactions",
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: AppColors.mainColor))
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 0),
                    width: screenWidth(context) * 0.39,
                    child: ListTile(
                        title: const Text("Patient Info",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        trailing: SizedBox(
                          width: screenWidth(context) * 0.262,
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
                                          Text("Date",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text("Amount",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text("Status",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text("Actions",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        )),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          PaymentTile(),
                          PaymentTile(),
                          PaymentTile(),
                          PaymentTile(),
                          PaymentTile(),
                          PaymentTile(),
                          PaymentTile(),
                          PaymentTile(),
                          PaymentTile(),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}
