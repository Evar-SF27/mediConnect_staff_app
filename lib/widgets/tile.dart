import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';

class Tile extends StatefulWidget {
  const Tile({super.key});

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 245,
        height: 180,
        padding: const EdgeInsets.all(13),
        decoration: const BoxDecoration(
            color: AppColors.opaqueBlueBackground,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: const Column(
          children: [
            Row(children: [
              Text("Number of Patients",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))
            ]),
            SizedBox(height: 15),
            Padding(
                padding: EdgeInsets.only(left: 15),
                child: Row(children: [
                  Text("20",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 70,
                          color: AppColors.mainColor))
                ])),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [
                  Text("Last 7 days", style: TextStyle(fontSize: 14))
                ]),
                Column(children: [
                  Row(children: [
                    Text("+0.2%", style: TextStyle(color: Colors.green)),
                    Icon(
                      Icons.arrow_upward,
                      color: Colors.green,
                    )
                  ])
                ]),
              ],
            )
          ],
        ));
  }
}
