import 'dart:ui';

import 'package:puzzler/components/goods.dart';
import 'package:puzzler/puzzler_game.dart';

class Goose extends Goods {
  Goose(PuzzlerGame game, double x, double y) : super(game) {
    rect = Rect.fromLTWH(
      x,
      y,
      48,
      48,
    );
    paint = Paint()..color = Color(0xffffffff);
  }
}
