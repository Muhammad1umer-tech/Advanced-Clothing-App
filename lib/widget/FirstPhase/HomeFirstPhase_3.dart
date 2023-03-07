import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FirstPhase_3 extends StatelessWidget {
  const FirstPhase_3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 45,
                      width: 70,
                      decoration: const BoxDecoration(
                          color: Color(0xffd6b738),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                          )),
                      child: const Center(
                        child: Text(
                          "Vegi",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              shadows: [
                                BoxShadow(
                                  blurRadius: 10,
                                  color: Colors.green,
                                  offset: Offset(3, 3),
                                ),
                              ]),
                        ),
                      ),
                    ),
                    const Center(
                      child: Text(
                        "30% OFF",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            shadows: [
                              BoxShadow(
                                blurRadius: 10,
                                color: Colors.green,
                                offset: Offset(3, 3),
                              ),
                            ]),
                      ),
                    ),
                    const Center(
                      child: Text(
                        "on all Clothing products!",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              BoxShadow(
                                blurRadius: 50,
                                color: Colors.white,
                                offset: Offset(3, 3),
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
