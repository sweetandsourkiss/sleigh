import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:spring/sleigh.dart';

void main() {
  final game = SleighGame();
  runApp(
    GameWidget(
      game: game,
    ),
  );
}
