import 'dart:ui';

import 'package:puzzler/enum/river_position.dart';
import 'package:puzzler/puzzler_game.dart';

class Boat {
  final PuzzlerGame game;
  Rect rect;
  RiverPosition position = RiverPosition.top;
  Object loadedObject;
  Offset targetLocation;
  double startX;
  double startY;
  double endY;
  double boatHeight; 

  double get speed => game.screenSize.width / 9 * 3;

  Boat(this.game) {
    boatHeight = game.screenSize.height / 6;
    startX = game.screenSize.width / 2 - game.screenSize.width / 16;
    startY = game.screenSize.height / 4;
    endY = game.screenSize.height * 3 / 4 - boatHeight;
    rect = Rect.fromLTWH(
      startX,
      startY,
      game.screenSize.width / 8,
      boatHeight,
    );
  }

  void render(Canvas canvas) {
    Paint boxPaint = Paint();
    boxPaint.color = Color(0xff964B00);
    canvas.drawRect(rect, boxPaint);
  }

  void update(double t) {
    if (position == RiverPosition.top) {
      if (rect.top < endY) {
        rect = rect.shift(Offset(0, speed * t));
      }
    } else {
      if (rect.top > startY) {
        rect = rect.shift(Offset(0, -speed * t));
      }
    }
  }

  void onTapDown() {
    if (position == RiverPosition.top) {
      position = RiverPosition.bottom;
    } else {
      position = RiverPosition.top;
    }
  }
}
