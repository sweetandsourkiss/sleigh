import 'dart:async';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:spring/components/test.dart';

class Spring extends FlameGame {
  @override
  FutureOr<void> onLoad() {
    final testComponent = Test()
      ..size = Vector2(size.x, size.y)
      ..position = Vector2(0, 0);
    world.add(testComponent);
    world.debugColor = Colors.amber;
    camera.viewfinder.visibleGameSize = Vector2(size.x, size.y);
    camera.viewfinder.position = Vector2(size.x / 2, 0);
    camera.viewfinder.anchor = Anchor.topCenter;
  }

  @override
  void onGameResize(Vector2 size) {
    print(size);
    super.onGameResize(size);
    final testComponent = Test()
      ..size = Vector2(size.x, size.y)
      ..position = Vector2(0, 0);
    world.add(testComponent);
    print(world.componentsAtPoint(Vector2(0, 0)).length);
    world.debugColor = Colors.amber;
    camera.viewfinder.visibleGameSize = Vector2(size.x, size.y);
    camera.viewfinder.position = Vector2(size.x / 2, 0);
    camera.viewfinder.anchor = Anchor.topCenter;
  }
}
