import 'package:app/utils/colors.dart';
import 'package:app/utils/hover.dart';
import 'package:app/utils/responsive.dart';
import 'package:app/utils/screen.dart';
import 'package:app/widgets/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConsultationNavigation extends StatefulWidget {
  final void Function(int) onButtonPressed;
  const ConsultationNavigation({super.key, required this.onButtonPressed});

  @override
  State<ConsultationNavigation> createState() => _ConsultationNavigationState();
}

class _ConsultationNavigationState extends State<ConsultationNavigation> {
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
                    right: BorderSide(
                        width: 1, color: AppColors.opaqueBackground)),
                color: AppColors.opaqueBackground),
            child: Column(children: [
              Row(children: [header(context)]),
              SizedBox(height: screenHeight(context) * 0.05),
              Row(children: [
                Column(children: [
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
                                    Icon(CupertinoIcons.add,
                                        size: 28,
                                        color: selectedItem == 0
                                            ? AppColors.blueDarkColor
                                            : null),
                                    const SizedBox(width: 10),
                                    Text("Add Consultations",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: selectedItem == 0
                                                ? AppColors.blueDarkColor
                                                : null)),
                                  ],
                                )
                              : Icon(CupertinoIcons.add,
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
                                    Icon(CupertinoIcons.doc,
                                        size: 28,
                                        color: selectedItem == 1
                                            ? AppColors.blueDarkColor
                                            : null),
                                    const SizedBox(width: 10),
                                    Text("View Consultations",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: selectedItem == 1
                                                ? AppColors.blueDarkColor
                                                : null)),
                                  ],
                                )
                              : Icon(CupertinoIcons.doc,
                                  size: 28,
                                  color: selectedItem == 1
                                      ? AppColors.blueDarkColor
                                      : null),
                        ),
                      )),
                  GestureDetector(
                      onTap: () {
                        widget.onButtonPressed(2);
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
                                      Icon(CupertinoIcons.chart_pie,
                                          size: 28,
                                          color: selectedItem == 3
                                              ? AppColors.blueDarkColor
                                              : null),
                                      const SizedBox(width: 10),
                                      Text("Statistics",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: selectedItem == 3
                                                  ? AppColors.blueDarkColor
                                                  : null)),
                                    ],
                                  )
                                : Icon(CupertinoIcons.chart_pie,
                                    size: 28,
                                    color: selectedItem == 3
                                        ? AppColors.blueDarkColor
                                        : null),
                          )))
                ])
              ])
            ])));
  }
}
