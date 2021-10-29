import 'package:flutter/material.dart';

class AppBottomBarItem {
  final IconData? icon;
  final String label;
  bool isSelected;

  AppBottomBarItem({
    this.icon,
    this.isSelected = false,
    this.label = '',
  });
}
