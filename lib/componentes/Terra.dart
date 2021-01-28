import 'dart:math';

import 'package:flame/components/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const ComponentSize = 60.0;
const SPEED = 150.0;

class Terra extends SpriteComponent {
  bool remove = false;
  Size dimensions;
  Random random = new Random();

  Terra(this.dimensions) : super.square(ComponentSize, 'terra.png');

  @override
  void update(double t) {
    super.update(t);
    this.y += t * SPEED;
  }

  @override
  bool destroy() {
    if (this.y > 600) {
      return true;
    }
    return remove;
  }

  @override
  void resize(Size size) {
    var positionX = random.nextDouble();

    this.x = positionX * 300;
    this.y = 0;
  }
}
