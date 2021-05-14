import 'package:flutter/material.dart';
import 'UIData.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(child: backGround()),
        Positioned(top: h / 4, left: w / 4, right: w / 4, child: logo())
      ],
    );
  }

  Widget backGround() {
    return Image.asset(UIData.bg,
        fit: BoxFit.cover, width: double.infinity, height: double.infinity);
  }

  Widget logo() {
    return Image.asset(
      UIData.logo,
    );
  }
}
