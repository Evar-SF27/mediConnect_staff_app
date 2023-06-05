import 'package:app/utils/screen.dart';
import 'package:app/widgets/tile.dart';
import 'package:flutter/material.dart';

class DataCard extends StatefulWidget {
  const DataCard({super.key});

  @override
  State<DataCard> createState() => _DataCardState();
}

class _DataCardState extends State<DataCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: screenWidth(context) * 0.73,
        height: 190,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Tile(),
              SizedBox(width: 20),
              Tile(),
              SizedBox(width: 20),
              Tile(),
              SizedBox(width: 20),
              Tile()
            ],
          ),
        ));
  }
}
