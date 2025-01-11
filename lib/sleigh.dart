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
      'road/road_intersection.png',
      'road/road_1.png',
      'road/road_2.png',
      'road/road_3.png',
      'road/road_4.png',
      'road/road_12.png',
      'road/road_13.png',
      'road/road_14.png',
      'road/road_23.png',
      'road/road_24.png',
      'road/road_34.png',
      'road/road_234.png',
      'road/road_123.png',
      'road/road_124.png',
      'road/road_134.png',
      'chimney/chimney_intersection.png',
      'chimney/chimney_1.png',
      'chimney/chimney_2.png',
      'chimney/chimney_3.png',
      'chimney/chimney_4.png',
      'chimney/chimney_12.png',
      'chimney/chimney_13.png',
      'chimney/chimney_14.png',
      'chimney/chimney_23.png',
      'chimney/chimney_24.png',
      'chimney/chimney_34.png',
      'chimney/chimney_234.png',
      'chimney/chimney_123.png',
      'chimney/chimney_124.png',
      'chimney/chimney_134.png',
      'temp-sleigh.png',
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
                size.x / 2 - maps[mapIndex].size / 2 * 64,
                size.y / 2 - maps[mapIndex].size / 2 * 64,
              ),
              ways: block.ways,
            ),
          );
        case const (ObstacleBlock):
        case const (ChimneyBlock):
          add(
            ChimneyBlock(
              gridPosition: block.gridPosition,
              offset: Vector2(
                size.x / 2 - maps[mapIndex].size / 2 * 64,
                size.y / 2 - maps[mapIndex].size / 2 * 64,
              ),
              ways: block.ways,
            ),
          );
        case const (SleighBlock):
      }
    }
  }

  @override
  Color backgroundColor() {
    return const Color(0xFF54544F);
  }
}
