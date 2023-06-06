import 'package:app/utils/colors.dart';
import 'package:app/utils/screen.dart';
import 'package:app/widgets/input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchContainer extends StatefulWidget {
  final String screenName;
  const SearchContainer({super.key, required this.screenName});

  @override
  State<SearchContainer> createState() => _SearchContainerState();
}

class _SearchContainerState extends State<SearchContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.symmetric(vertical: 10),
        width: screenWidth(context) * 0.73,
        child: Column(children: [
          Container(
              width: screenWidth(context) * 0.73,
              height: screenWidth(context) * 0.05,
              decoration: BoxDecoration(
                  border:
                      Border.all(width: 1, color: AppColors.opaqueBackground),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: AppColors.opaqueBackground),
              child: Row(children: [
                const SizedBox(width: 15),
                SizedBox(
                    width: 140,
                    child: Text(widget.screenName,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold))),
                const SizedBox(width: 5),
                Expanded(
                  child: textInputField(
                      controller: null, hideText: false, hintText: "Search..."),
                ),
                const SizedBox(width: 5),
                const IconButton(
                    onPressed: null,
                    icon:
                        Icon(CupertinoIcons.bell, color: AppColors.lightColor)),
                const IconButton(
                    onPressed: null,
                    icon: Icon(CupertinoIcons.profile_circled,
                        color: AppColors.lightColor)),
                const IconButton(
                    onPressed: null,
                    icon: Icon(CupertinoIcons.ellipsis_vertical,
                        color: AppColors.lightColor)),
                const SizedBox(width: 10)
              ]))
        ]));
  }
}
