import 'dart:async';
import 'dart:ui';
import 'package:flame/components.dart';
import 'package:flame/game.dart';

class SleighGame extends FlameGame {
  @override
  FutureOr<void> onLoad() {
    camera.viewfinder.anchor = Anchor.topCenter;
    camera.viewfinder.visibleGameSize = Vector2(size.x, size.y);
    camera.viewfinder.position = Vector2(size.x / 2, 0);
  }

  @override
  Color backgroundColor() {
    return const Color(0xFF54544F);
  }
}
