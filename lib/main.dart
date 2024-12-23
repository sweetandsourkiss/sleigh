import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:spring/asphalt.dart';

void main() {
  final game = AsphaltGame();
  runApp(
    GameWidget(
      game: game,
    ),
  );
}
