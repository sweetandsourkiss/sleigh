import 'dart:async';

import 'package:flame/components.dart';
import 'package:spring/sleigh.dart';

class RoadBlock extends SpriteComponent with HasGameReference<SleighGame> {
  final Vector2 gridPosition;
  final Vector2 offset;
  final String ways;

  RoadBlock({
    required this.gridPosition,
    required this.offset,
    required this.ways,
  }) : super(size: Vector2.all(64), anchor: Anchor.topLeft);

  @override
  FutureOr<void> onLoad() {
    final roadImage = game.images.fromCache('road/road_$ways.png');
    sprite = Sprite(roadImage);
    position = Vector2(
        gridPosition.x * size.x + offset.x, gridPosition.y * size.y + offset.y);
  }
}
