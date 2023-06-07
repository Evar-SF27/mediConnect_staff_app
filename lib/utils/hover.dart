import 'package:app/utils/responsive.dart';
import 'package:app/utils/screen.dart';
import 'package:flutter/material.dart';

class HoverContainer extends StatefulWidget {
  final Widget child;
  final Color defaultColor;
  final Color hoverColor;

  const HoverContainer(
      {super.key,
      required this.child,
      required this.defaultColor,
      required this.hoverColor});

  @override
  State<HoverContainer> createState() => _HoverContainerState();
}

class _HoverContainerState extends State<HoverContainer> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => isHovering = true),
      onExit: (event) => setState(() => isHovering = false),
      child: Container(
          width: ResponsiveWidget.isLargeScreen(context)
              ? screenWidth(context) * 0.2
              : screenWidth(context) * 0.06,
          decoration: BoxDecoration(
              color: isHovering ? widget.hoverColor : widget.defaultColor,
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: widget.child),
    );
  }
}
