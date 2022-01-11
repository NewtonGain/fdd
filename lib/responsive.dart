import 'package:flutter/material.dart';

class ResponsivePage extends StatelessWidget {
  final Widget mobile;
  final Widget tab;
  final Widget destop;

  ResponsivePage(
      {required this.mobile, required this.tab, required this.destop});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      if (Constraints.maxWidth < 768) {
        return mobile;
      } else if (Constraints.maxWidth < 900) {
        return tab;
      } else {
        return destop;
      }
    });
  }
}
