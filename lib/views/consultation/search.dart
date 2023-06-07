import 'package:app/utils/colors.dart';
import 'package:app/widgets/input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchConsultationContainer extends StatefulWidget {
  final String screenName;
  const SearchConsultationContainer({super.key, required this.screenName});

  @override
  State<SearchConsultationContainer> createState() =>
      _SearchConsultationContainerState();
}

class _SearchConsultationContainerState
    extends State<SearchConsultationContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Column(children: [
          Container(
              height: 60,
              decoration: BoxDecoration(
                  border:
                      Border.all(width: 1, color: AppColors.opaqueBackground),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: AppColors.opaqueBackground),
              child: Row(children: [
                const SizedBox(width: 15),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(CupertinoIcons.left_chevron)),
                SizedBox(
                    width: 200,
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
