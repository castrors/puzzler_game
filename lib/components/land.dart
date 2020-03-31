import 'dart:ui';

import 'package:puzzler/puzzler_game.dart';

class Land {
  final PuzzlerGame game;
  Rect rect;

  Land(this.game) {
    rect = Rect.fromLTWH(
      0,
      0,
      game.screenSize.width,
      game.screenSize.height,
    );
  }

  void render(Canvas canvas) {
    Paint boxPaint = Paint();
    boxPaint.color = Color(0xff00ff00);
    canvas.drawRect(rect, boxPaint);
  }

  void update(double t) {}
}
