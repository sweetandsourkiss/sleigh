import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:spring/spring.dart';

void main() {
  final game = Spring();
  runApp(
    GameWidget(
      game: game,
    ),
  );
}
