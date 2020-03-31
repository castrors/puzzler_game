import 'dart:ui';

import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:puzzler/components/corn.dart';
import 'package:puzzler/components/fox.dart';
import 'package:puzzler/components/goose.dart';
import 'package:puzzler/components/land.dart';
import 'package:puzzler/components/river.dart';
import 'package:puzzler/components/boat.dart';

class PuzzlerGame extends Game {
  Size screenSize;
  double screenCenterX;
  double screenCenterY;
  double cornStartX;
  double cornStartY;
  double gooseStartX;
  double gooseStartY;
  double foxStartX;
  double foxStartY;
  bool hasWon = false;

  Land land;
  River river;
  Boat boat;
  Corn corn;
  Goose goose;
  Fox fox;

  PuzzlerGame() {
    initialize();
  }

  void initialize() async {
    resize(await Flame.util.initialDimensions());
    land = Land(this);
    river = River(this);
    boat = Boat(this);
    corn = Corn(this, cornStartX, cornStartY);
    goose = Goose(this, gooseStartX, gooseStartY);
    fox = Fox(this, foxStartX, foxStartY);
  }

  @override
  void render(Canvas canvas) {
    // Rect bgRect = Rect.fromLTWH(0, 0, screenSize.width, screenSize.height);
    // Paint bgPaint = Paint();
    // bgPaint.color = Color(0xff00ff00);
    // canvas.drawRect(bgRect, bgPaint);

    // Rect goose = Rect.fromLTWH(
    //   screenCenterX + screenSize.width / 16 - 48,
    //   screenCenterY + screenSize.height / 3,
    //   48,
    //   48,
    // );

    // Rect fox = Rect.fromLTWH(
    //   screenCenterX + screenSize.width / 3 - 48,
    //   screenCenterY + screenSize.height / 3,
    //   48,
    //   48,
    // );

    // boxPaint.color = Color(0xffffa500);
    // canvas.drawRect(fox, boxPaint);

    land.render(canvas);
    river.render(canvas);
    boat.render(canvas);
    corn.render(canvas);
    goose.render(canvas);
    fox.render(canvas);
  }

  @override
  void update(double t) {
    boat.update(t);
  }

  void resize(Size size) {
    screenSize = size;

    screenCenterX = screenSize.width / 2;
    screenCenterY = screenSize.height / 2;

    cornStartX = screenCenterX - screenSize.width / 3;
    cornStartY = screenCenterY + screenSize.height / 3;

    gooseStartX = screenCenterX + screenSize.width / 16 - 48;
    gooseStartY = screenCenterY + screenSize.height / 3;

    foxStartX = screenCenterX + screenSize.width / 3 - 48;
    foxStartY = screenCenterY + screenSize.height / 3;
  }

  void onTapDown(TapDownDetails details) {
    bool isHandled = false;

    if (!isHandled && boat.rect.contains(details.globalPosition)) {
      boat.onTapDown();
    }
  }
}
