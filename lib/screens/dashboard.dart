import 'package:app/utils/colors.dart';
import 'package:app/utils/screen.dart';
import 'package:app/widgets/input.dart';
import 'package:app/widgets/side.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Row(
        children: [
          const SideBar(),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            width: screenWidth(context) * 0.73,
            child: Column(
              children: [
                Container(
                  width: screenWidth(context) * 0.71,
                  height: screenWidth(context) * 0.05,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1, color: AppColors.opaqueBackground),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: AppColors.opaqueBackground),
                  child: Row(
                    children: [
                      const SizedBox(width: 15),
                      const Text("Dashboard",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      const SizedBox(width: 5),
                      Expanded(
                        child: textInputField(
                            controller: null,
                            hideText: false,
                            hintText: "Search..."),
                      ),
                      const SizedBox(width: 5),
                      const IconButton(
                          onPressed: null,
                          icon: Icon(CupertinoIcons.bell,
                              color: AppColors.lightColor)),
                      const IconButton(
                          onPressed: null,
                          icon: Icon(CupertinoIcons.profile_circled,
                              color: AppColors.lightColor)),
                      const IconButton(
                          onPressed: null,
                          icon: Icon(CupertinoIcons.settings,
                              color: AppColors.lightColor)),
                      const SizedBox(width: 15),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
