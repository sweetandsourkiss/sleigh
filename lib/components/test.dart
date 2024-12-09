import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class Test extends PositionComponent {
  @override
  bool get debugMode => true;

  @override
  void render(Canvas canvas) {
    canvas.drawRRect(
      RRect.fromRectAndRadius(
          Vector2(330, 600).toRect(), const Radius.circular(10)),
      Paint()
        ..color = Colors.amber
        ..style = PaintingStyle.fill,
    );
  }
}
