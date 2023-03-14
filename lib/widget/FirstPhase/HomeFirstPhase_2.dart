import 'package:flutter/material.dart';
import 'package:own/Dimension/Dimension.dart';

class FirstPhase_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.HomePhase1,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Colors.black54,
              Colors.transparent,
            ],
          )),
    );
  }
}
