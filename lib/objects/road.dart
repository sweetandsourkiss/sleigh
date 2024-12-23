import 'dart:async';

import 'package:flame/components.dart';
import 'package:spring/sleigh.dart';

class RoadBlock extends SpriteComponent with HasGameReference<SleighGame> {
  final Vector2 gridPosition;

  RoadBlock({
    required this.gridPosition,
  }) : super(size: Vector2.all(64), anchor: Anchor.bottomLeft);

  @override
  FutureOr<void> onLoad() {
    final roadImage = game.images.fromCache('template_road.png');
    sprite = Sprite(roadImage);
    position = Vector2(gridPosition.x * size.x, gridPosition.y * size.y);
  }
}
