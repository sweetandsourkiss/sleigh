import 'package:flame/game.dart';
import 'package:spring/objects/stage.dart';
import 'package:spring/objects/sleigh.dart';
import 'package:spring/objects/chimney.dart';
import 'package:spring/objects/road.dart';

class Block {
  final Vector2 gridPosition;
  final Type blockType;
  final String ways;

  Block(
      {required this.gridPosition,
      required this.blockType,
      required this.ways});
}

final maps = [
  map1,
];

final map1 = SleighStage(size: 4, blocks: [
  Block(gridPosition: Vector2(0, 0), blockType: RoadBlock, ways: "23"),
  Block(gridPosition: Vector2(1, 0), blockType: RoadBlock, ways: "234"),
  Block(gridPosition: Vector2(2, 0), blockType: RoadBlock, ways: "234"),
  Block(gridPosition: Vector2(3, 0), blockType: ChimneyBlock, ways: "34"),
  Block(gridPosition: Vector2(0, 1), blockType: RoadBlock, ways: "123"),
  Block(
      gridPosition: Vector2(1, 1), blockType: RoadBlock, ways: "intersection"),
  Block(
      gridPosition: Vector2(2, 1), blockType: RoadBlock, ways: "intersection"),
  Block(gridPosition: Vector2(3, 1), blockType: RoadBlock, ways: "134"),
  Block(gridPosition: Vector2(0, 2), blockType: RoadBlock, ways: "123"),
  Block(
      gridPosition: Vector2(1, 2), blockType: RoadBlock, ways: "intersection"),
  Block(
      gridPosition: Vector2(2, 2), blockType: RoadBlock, ways: "intersection"),
  Block(gridPosition: Vector2(3, 2), blockType: RoadBlock, ways: "134"),
  Block(gridPosition: Vector2(0, 3), blockType: RoadBlock, ways: "12"),
  Block(gridPosition: Vector2(0, 3), blockType: SleighBlock, ways: "124"),
  Block(gridPosition: Vector2(1, 3), blockType: RoadBlock, ways: "124"),
  Block(gridPosition: Vector2(2, 3), blockType: RoadBlock, ways: "124"),
  Block(gridPosition: Vector2(3, 3), blockType: RoadBlock, ways: "14"),
]);
