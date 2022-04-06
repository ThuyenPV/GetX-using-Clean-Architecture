import 'package:flutter/material.dart';

extension HexColorExt on Color {
  String toHexColor() => '#${(value & 0xFFFFFF).toRadixString(16).padLeft(6, '0').toUpperCase()}';
}
