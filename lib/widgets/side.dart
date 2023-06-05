import 'package:app/utils/colors.dart';
import 'package:app/utils/hover.dart';
import 'package:app/utils/screen.dart';
import 'package:app/widgets/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      height: screenHeight(context),
      width: screenWidth(context) * 0.23,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
      decoration: const BoxDecoration(
          border: Border(
              right: BorderSide(width: 1, color: AppColors.opaqueBackground)),
          color: AppColors.opaqueBackground),
      child: Column(
        children: [
          Row(children: [header(context)]),
          SizedBox(height: screenHeight(context) * 0.05),
          Row(
            children: [
              Column(
                children: [
                  HoverContainer(
                    defaultColor: Colors.transparent,
                    hoverColor: AppColors.lightColor,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 13),
                      child: const Row(
                        children: [
                          Icon(CupertinoIcons.home, size: 28),
                          SizedBox(width: 10),
                          Text("Dashboard", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                  HoverContainer(
                    defaultColor: Colors.transparent,
                    hoverColor: AppColors.lightColor,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 13),
                      child: const Row(
                        children: [
                          Icon(CupertinoIcons.list_bullet_below_rectangle,
                              size: 28),
                          SizedBox(width: 10),
                          Text("Consultations", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                  HoverContainer(
                    defaultColor: Colors.transparent,
                    hoverColor: AppColors.lightColor,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 13),
                      child: const Row(
                        children: [
                          Icon(CupertinoIcons.lab_flask, size: 28),
                          SizedBox(width: 10),
                          Text("Laboratory", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                  HoverContainer(
                    defaultColor: Colors.transparent,
                    hoverColor: AppColors.lightColor,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 13),
                      child: const Row(
                        children: [
                          Icon(CupertinoIcons.bed_double, size: 28),
                          SizedBox(width: 10),
                          Text("Admission", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                  HoverContainer(
                    defaultColor: Colors.transparent,
                    hoverColor: AppColors.lightColor,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 13),
                      child: const Row(
                        children: [
                          Icon(CupertinoIcons.person_2_fill, size: 28),
                          SizedBox(width: 10),
                          Text("Staff", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                  HoverContainer(
                    defaultColor: Colors.transparent,
                    hoverColor: AppColors.lightColor,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 13),
                      child: const Row(
                        children: [
                          Icon(CupertinoIcons.person_2_alt, size: 28),
                          SizedBox(width: 10),
                          Text("Doctor", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                  HoverContainer(
                    defaultColor: Colors.transparent,
                    hoverColor: AppColors.lightColor,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 13),
                      child: const Row(
                        children: [
                          Icon(CupertinoIcons.person_3_fill, size: 28),
                          SizedBox(width: 10),
                          Text("Patients", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                  HoverContainer(
                    defaultColor: Colors.transparent,
                    hoverColor: AppColors.lightColor,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 13),
                      child: const Row(
                        children: [
                          Icon(CupertinoIcons.creditcard, size: 28),
                          SizedBox(width: 10),
                          Text("Payment", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                  HoverContainer(
                    defaultColor: Colors.transparent,
                    hoverColor: AppColors.lightColor,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 13),
                      child: const Row(
                        children: [
                          Icon(CupertinoIcons.chart_bar_alt_fill, size: 28),
                          SizedBox(width: 10),
                          Text("Statistics", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    ));
  }
}
