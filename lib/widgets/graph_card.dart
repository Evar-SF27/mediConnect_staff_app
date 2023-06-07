import 'package:app/utils/screen.dart';
import 'package:app/widgets/graph_tile.dart';
import 'package:flutter/material.dart';

class GraphDataCard extends StatefulWidget {
  const GraphDataCard({super.key});

  @override
  State<GraphDataCard> createState() => _GraphDataCardState();
}

class _GraphDataCardState extends State<GraphDataCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: screenHeight(context) * 0.3,
        child: const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GraphTile(),
              SizedBox(width: 10),
              GraphTile(),
              SizedBox(width: 10),
              GraphTile()
            ],
          ),
        ));
  }
}
