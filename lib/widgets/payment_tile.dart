import 'package:app/utils/colors.dart';
import 'package:app/utils/responsive.dart';
import 'package:app/utils/screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentTile extends StatefulWidget {
  const PaymentTile({super.key});

  @override
  State<PaymentTile> createState() => _PaymentTileState();
}

class _PaymentTileState extends State<PaymentTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(bottom: 5),
        width: ResponsiveWidget.isLargeScreen(context)
            ? screenWidth(context) * 0.39
            : screenWidth(context) * 0.48,
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: AppColors.greyColor)),
        ),
        child: ListTile(
            title: const Text("Patient Name",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            subtitle:
                const Text("patient@gmail.com", style: TextStyle(fontSize: 14)),
            trailing: SizedBox(
                width: ResponsiveWidget.isLargeScreen(context)
                    ? screenWidth(context) * 0.25
                    : screenWidth(context) * 0.3,
                child: const Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                Text("17/03/23",
                                    style: TextStyle(
                                        color: AppColors.greyColor,
                                        fontSize: 13)),
                                Text("11:30AM",
                                    style: TextStyle(
                                        color: AppColors.greyColor,
                                        fontSize: 13))
                              ],
                            )),
                        Column(
                          children: [
                            Text("25.000XAF",
                                style: TextStyle(
                                    color: AppColors.greyColor, fontSize: 14)),
                          ],
                        ),
                        Column(children: [
                          Row(children: [
                            Text("Pending",
                                style: TextStyle(
                                    color: AppColors.greyColor, fontSize: 14)),
                          ])
                        ])
                      ])
                ]))));
  }
}
