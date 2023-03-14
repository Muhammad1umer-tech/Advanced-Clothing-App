import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:own/Dimension/Dimension.dart';

class Header extends StatelessWidget {
  final String str;
  Header(this.str);
  @override
  Widget build(BuildContext context) {
    print(Dimensions.NavigatorBarHeight);
    return Container(
      //height: 30,
      width: double.infinity,
      margin: const EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            str,
            style: TextStyle(color: Colors.black),
          ),
          const Text(
            "View all",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
