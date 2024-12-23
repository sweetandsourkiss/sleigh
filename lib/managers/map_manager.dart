import 'package:flame/game.dart';
import 'package:spring/objects/stage.dart';
import 'package:spring/objects/sleigh.dart';
import 'package:spring/objects/chimney.dart';
import 'package:spring/objects/road.dart';

class Block {
  final Vector2 gridPosition;
  final Type blockType;

  Block({required this.gridPosition, required this.blockType});
}

final maps = [
  map1,
];

final map1 = SleighStage(size: 4, blocks: [
  Block(gridPosition: Vector2(0, 0), blockType: RoadBlock),
  Block(gridPosition: Vector2(1, 0), blockType: RoadBlock),
  Block(gridPosition: Vector2(2, 0), blockType: RoadBlock),
  Block(gridPosition: Vector2(3, 0), blockType: ChimneyBlock),
  Block(gridPosition: Vector2(0, 1), blockType: RoadBlock),
  Block(gridPosition: Vector2(1, 1), blockType: RoadBlock),
  Block(gridPosition: Vector2(2, 1), blockType: RoadBlock),
  Block(gridPosition: Vector2(3, 1), blockType: RoadBlock),
  Block(gridPosition: Vector2(0, 2), blockType: RoadBlock),
  Block(gridPosition: Vector2(1, 2), blockType: RoadBlock),
  Block(gridPosition: Vector2(2, 2), blockType: RoadBlock),
  Block(gridPosition: Vector2(3, 2), blockType: RoadBlock),
  Block(gridPosition: Vector2(0, 3), blockType: RoadBlock),
  Block(gridPosition: Vector2(0, 3), blockType: SleighBlock),
  Block(gridPosition: Vector2(1, 3), blockType: RoadBlock),
  Block(gridPosition: Vector2(2, 3), blockType: RoadBlock),
  Block(gridPosition: Vector2(3, 3), blockType: RoadBlock),
]);
