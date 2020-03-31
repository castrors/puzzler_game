import 'dart:ui';

import 'package:puzzler/puzzler_game.dart';

class River {
  final PuzzlerGame game;
  Rect rect;

  River(this.game) {
    rect = Rect.fromLTWH(
      0,
      game.screenSize.height / 4,
      game.screenSize.width,
      game.screenSize.height / 2,
    );
  }

  void render(Canvas canvas) {
    Paint boxPaint = Paint();
    boxPaint.color = Color(0xff0000ff);
    canvas.drawRect(rect, boxPaint);
  }

  void update(double t) {}
}
