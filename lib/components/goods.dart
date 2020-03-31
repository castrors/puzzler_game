import 'dart:ui';

import 'package:puzzler/puzzler_game.dart';

class Goods {
  final PuzzlerGame game;
  Rect rect;
  Paint paint;
  Goods(this.game);

  void render(Canvas canvas) {
    canvas.drawRect(rect, paint);
  }
}
