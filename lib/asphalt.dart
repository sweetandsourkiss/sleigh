import 'dart:async';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:spring/components/test.dart';

class AsphaltGame extends FlameGame {
  @override
  FutureOr<void> onLoad() {
    final testComponent = Test()
      ..size = Vector2(size.x, size.y)
      ..position = Vector2(0, 0);
    world.add(testComponent);
    camera.viewfinder.anchor = Anchor.topCenter;
    camera.viewfinder.visibleGameSize = Vector2(size.x, size.y);
    camera.viewfinder.position = Vector2(size.x / 2, 0);
  }

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);
    final test = world.children.firstOrNull as Test?;
    if (test != null) {
      camera.viewfinder.position = Vector2(test.size.x / 2, 0);
      camera.viewfinder.visibleGameSize = Vector2(size.x, size.y);
    }
  }
}
