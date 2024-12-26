import 'dart:async';
import 'package:flame/components.dart';
import 'package:spring/sleigh.dart';

class ChimneyBlock extends SpriteComponent with HasGameReference<SleighGame> {
  final Vector2 gridPosition;
  final Vector2 offset;
  final String ways;

  ChimneyBlock({
    required this.gridPosition,
    required this.offset,
    required this.ways,
  }) : super(size: Vector2.all(64), anchor: Anchor.topLeft);

  @override
  FutureOr<void> onLoad() {
    final chimneyImage = game.images.fromCache('chimney/chimney_$ways.png');
    sprite = Sprite(chimneyImage);
    position = Vector2(
        gridPosition.x * size.x + offset.x, gridPosition.y * size.y + offset.y);
  }
}
