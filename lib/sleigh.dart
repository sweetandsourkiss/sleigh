import 'dart:async';
import 'dart:ui';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:spring/objects/chimney.dart';
import 'package:spring/objects/obstacle.dart';
import 'package:spring/objects/road.dart';
import 'package:spring/objects/sleigh.dart';

import './managers/map_manager.dart';

class SleighGame extends FlameGame {
  @override
  FutureOr<void> onLoad() async {
    await images.loadAll([
      'template_road.png',
    ]);
    camera.viewfinder.anchor = Anchor.topCenter;
    camera.viewfinder.visibleGameSize = Vector2(size.x, size.y);
    camera.viewfinder.position = Vector2(size.x / 2, 0);
    initializeGame();
  }

  void initializeGame() {
    loadGameMap(0);
  }

  void loadGameMap(int mapIndex) {
    for (final block in maps[mapIndex].blocks) {
      switch (block.blockType) {
        case const (RoadBlock):
          add(
            RoadBlock(
              gridPosition: block.gridPosition,
              offset: Vector2(
                size.x / 2 - maps[mapIndex].size * 64 / 2,
                size.y / 2 + maps[mapIndex].size * 64 / 2 - 192,
              ),
            ),
          );
        case const (ObstacleBlock):
        case const (ChimneyBlock):
        case const (SleighBlock):
      }
    }
  }

  @override
  Color backgroundColor() {
    return const Color(0xFF54544F);
  }
}
