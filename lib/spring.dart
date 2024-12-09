import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:spring/components/test.dart';

class Spring extends FlameGame {
  @override
  FutureOr<void> onLoad() {
    final testComponent = Test()
      ..size = Vector2(330, 600)
      ..position = Vector2(0, 0);
    world.add(testComponent);
    world.debugColor = Colors.amber;
    camera.viewfinder.visibleGameSize = Vector2(330.0, 600.0);
    camera.viewfinder.position = Vector2(165.0, 0);
    camera.viewfinder.anchor = Anchor.topCenter;
  }
}
