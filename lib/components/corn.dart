import 'dart:ui';

import 'package:puzzler/components/goods.dart';
import 'package:puzzler/puzzler_game.dart';

class Corn extends Goods {
  Corn(PuzzlerGame game, double x, double y) : super(game) {
    rect = Rect.fromLTWH(
      x,
      y,
      48,
      48,
    );
    paint = Paint()..color = Color(0xfffff000);
  }
}
