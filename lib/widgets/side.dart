import 'package:app/utils/colors.dart';
import 'package:app/utils/hover.dart';
import 'package:app/utils/responsive.dart';
import 'package:app/utils/screen.dart';
import 'package:app/widgets/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  final void Function(int) onButtonPressed;
  const SideBar({super.key, required this.onButtonPressed});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      height: screenHeight(context),
      width: ResponsiveWidget.isLargeScreen(context)
          ? screenWidth(context) * 0.23
          : screenWidth(context) * 0.095,
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
                  GestureDetector(
                      onTap: () {
                        widget.onButtonPressed(0);
                        selectedItem = 0;
                      },
                      child: HoverContainer(
                        defaultColor: Colors.transparent,
                        hoverColor: AppColors.lightColor,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 13),
                          child: ResponsiveWidget.isLargeScreen(context)
                              ? Row(
                                  children: [
                                    Icon(CupertinoIcons.home,
                                        size: 28,
                                        color: selectedItem == 0
                                            ? AppColors.blueDarkColor
                                            : null),
                                    const SizedBox(width: 10),
                                    Text("Dashboard",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: selectedItem == 0
                                                ? AppColors.blueDarkColor
                                                : null)),
                                  ],
                                )
                              : Icon(CupertinoIcons.home,
                                  size: 28,
                                  color: selectedItem == 0
                                      ? AppColors.blueDarkColor
                                      : null),
                        ),
                      )),
                  GestureDetector(
                      onTap: () {
                        widget.onButtonPressed(1);
                        selectedItem = 1;
                      },
                      child: HoverContainer(
                        defaultColor: Colors.transparent,
                        hoverColor: AppColors.lightColor,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 13),
                          child: ResponsiveWidget.isLargeScreen(context)
                              ? Row(
                                  children: [
                                    Icon(
                                        CupertinoIcons
                                            .list_bullet_below_rectangle,
                                        size: 28,
                                        color: selectedItem == 1
                                            ? AppColors.blueDarkColor
                                            : null),
                                    const SizedBox(width: 10),
                                    Text("Consultations",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: selectedItem == 1
                                                ? AppColors.blueDarkColor
                                                : null)),
                                  ],
                                )
                              : Icon(CupertinoIcons.list_bullet_below_rectangle,
                                  size: 28,
                                  color: selectedItem == 1
                                      ? AppColors.blueDarkColor
                                      : null),
                        ),
                      )),
                  GestureDetector(
                      onTap: () {
                        widget.onButtonPressed(0);
                        selectedItem = 2;
                      },
                      child: HoverContainer(
                        defaultColor: Colors.transparent,
                        hoverColor: AppColors.lightColor,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 13),
                          child: ResponsiveWidget.isLargeScreen(context)
                              ? Row(
                                  children: [
                                    Icon(CupertinoIcons.lab_flask,
                                        size: 28,
                                        color: selectedItem == 2
                                            ? AppColors.blueDarkColor
                                            : null),
                                    const SizedBox(width: 10),
                                    Text("Laboratory",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: selectedItem == 2
                                                ? AppColors.blueDarkColor
                                                : null)),
                                  ],
                                )
                              : Icon(CupertinoIcons.lab_flask,
                                  size: 28,
                                  color: selectedItem == 2
                                      ? AppColors.blueDarkColor
                                      : null),
                        ),
                      )),
                  GestureDetector(
                    onTap: () {
                      widget.onButtonPressed(0);
                      selectedItem = 3;
                    },
                    child: HoverContainer(
                      defaultColor: Colors.transparent,
                      hoverColor: AppColors.lightColor,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 13),
                        child: ResponsiveWidget.isLargeScreen(context)
                            ? Row(
                                children: [
                                  Icon(CupertinoIcons.bed_double,
                                      size: 28,
                                      color: selectedItem == 3
                                          ? AppColors.blueDarkColor
                                          : null),
                                  const SizedBox(width: 10),
                                  Text("Admission",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: selectedItem == 3
                                              ? AppColors.blueDarkColor
                                              : null)),
                                ],
                              )
                            : Icon(CupertinoIcons.bed_double,
                                size: 28,
                                color: selectedItem == 3
                                    ? AppColors.blueDarkColor
                                    : null),
                      ),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        widget.onButtonPressed(0);
                        selectedItem = 4;
                      },
                      child: HoverContainer(
                        defaultColor: Colors.transparent,
                        hoverColor: AppColors.lightColor,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 13),
                          child: ResponsiveWidget.isLargeScreen(context)
                              ? Row(
                                  children: [
                                    Icon(CupertinoIcons.person_2_fill,
                                        size: 28,
                                        color: selectedItem == 4
                                            ? AppColors.blueDarkColor
                                            : null),
                                    const SizedBox(width: 10),
                                    Text("Staff",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: selectedItem == 4
                                                ? AppColors.blueDarkColor
                                                : null)),
                                  ],
                                )
                              : Icon(CupertinoIcons.person_2_fill,
                                  size: 28,
                                  color: selectedItem == 4
                                      ? AppColors.blueDarkColor
                                      : null),
                        ),
                      )),
                  GestureDetector(
                      onTap: () {
                        widget.onButtonPressed(0);
                        selectedItem = 5;
                      },
                      child: HoverContainer(
                        defaultColor: Colors.transparent,
                        hoverColor: AppColors.lightColor,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 13),
                          child: ResponsiveWidget.isLargeScreen(context)
                              ? Row(
                                  children: [
                                    Icon(CupertinoIcons.person_2_alt,
                                        size: 28,
                                        color: selectedItem == 5
                                            ? AppColors.blueDarkColor
                                            : null),
                                    const SizedBox(width: 10),
                                    Text("Doctor",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: selectedItem == 5
                                                ? AppColors.blueDarkColor
                                                : null)),
                                  ],
                                )
                              : Icon(CupertinoIcons.person_2_alt,
                                  size: 28,
                                  color: selectedItem == 5
                                      ? AppColors.blueDarkColor
                                      : null),
                        ),
                      )),
                  GestureDetector(
                      onTap: () {
                        widget.onButtonPressed(0);
                        selectedItem = 6;
                      },
                      child: HoverContainer(
                        defaultColor: Colors.transparent,
                        hoverColor: AppColors.lightColor,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 13),
                          child: ResponsiveWidget.isLargeScreen(context)
                              ? Row(
                                  children: [
                                    Icon(CupertinoIcons.person_3_fill,
                                        size: 28,
                                        color: selectedItem == 6
                                            ? AppColors.blueDarkColor
                                            : null),
                                    const SizedBox(width: 10),
                                    Text("Patients",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: selectedItem == 6
                                                ? AppColors.blueDarkColor
                                                : null)),
                                  ],
                                )
                              : Icon(CupertinoIcons.person_3_fill,
                                  size: 28,
                                  color: selectedItem == 6
                                      ? AppColors.blueDarkColor
                                      : null),
                        ),
                      )),
                  GestureDetector(
                      onTap: () {
                        widget.onButtonPressed(2);
                        selectedItem = 7;
                      },
                      child: HoverContainer(
                        defaultColor: Colors.transparent,
                        hoverColor: AppColors.lightColor,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 13),
                          child: ResponsiveWidget.isLargeScreen(context)
                              ? Row(
                                  children: [
                                    Icon(CupertinoIcons.creditcard,
                                        size: 28,
                                        color: selectedItem == 7
                                            ? AppColors.blueDarkColor
                                            : null),
                                    const SizedBox(width: 10),
                                    Text("Payment",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: selectedItem == 7
                                                ? AppColors.blueDarkColor
                                                : null)),
                                  ],
                                )
                              : Icon(CupertinoIcons.creditcard,
                                  size: 28,
                                  color: selectedItem == 7
                                      ? AppColors.blueDarkColor
                                      : null),
                        ),
                      )),
                  GestureDetector(
                      onTap: () {
                        widget.onButtonPressed(0);
                        selectedItem = 8;
                      },
                      child: HoverContainer(
                        defaultColor: Colors.transparent,
                        hoverColor: AppColors.lightColor,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 13),
                          child: ResponsiveWidget.isLargeScreen(context)
                              ? Row(
                                  children: [
                                    Icon(CupertinoIcons.chart_bar_alt_fill,
                                        size: 28,
                                        color: selectedItem == 8
                                            ? AppColors.blueDarkColor
                                            : null),
                                    const SizedBox(width: 10),
                                    Text("Statistics",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: selectedItem == 8
                                                ? AppColors.blueDarkColor
                                                : null)),
                                  ],
                                )
                              : Icon(CupertinoIcons.chart_bar_alt_fill,
                                  size: 28,
                                  color: selectedItem == 8
                                      ? AppColors.blueDarkColor
                                      : null),
                        ),
                      )),
                ],
              )
            ],
          ),
        ],
      ),
    ));
  }
}
