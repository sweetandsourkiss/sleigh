import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:spring/spring_game.dart';

void main() {
  final game = SpringGame();
  runApp(
    GameWidget(
      game: game,
    ),
  );
}
