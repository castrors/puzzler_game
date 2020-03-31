import 'dart:ui';

import 'package:puzzler/components/goods.dart';
import 'package:puzzler/puzzler_game.dart';

class Fox extends Goods {
  Fox(PuzzlerGame game, double x, double y) : super(game) {
    rect = Rect.fromLTWH(
      x,
      y,
      48,
      48,
    );
    paint = Paint()..color = Color(0xffffa500);
  }
}
