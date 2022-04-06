import 'package:base_getx/app/core/resource/app_colors.dart';
import 'package:flutter/material.dart';

class AppBar extends PreferredSize {
  final Widget child;
  final double height;
  final Color bgColor;
  final EdgeInsetsGeometry padding;

  AppBar({
    required this.child,
    this.height = kToolbarHeight,
    this.bgColor = AppColors.white,
    this.padding = const EdgeInsets.only(top: 32),
  }) : super(child: child, preferredSize: Size.fromHeight(height));

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height + 32,
      padding: padding,
      color: bgColor,
      child: child,
    );
  }
}
