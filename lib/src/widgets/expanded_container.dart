import 'package:Jarvise/src/style/base.dart';
import 'package:Jarvise/src/style/box_decoration.dart';
import 'package:flutter/material.dart';

class ExpandedContainer extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;

  final Color color;

  const ExpandedContainer(
      {@required this.child,
      @required this.height,
      @required this.width,
      @required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: BaseStyles.containerPadding,
      decoration: BoxDecorationContainer.expandedContainerDecoration(color),
      height: height,
      width: width,
      child: child,
    );
  }
}
