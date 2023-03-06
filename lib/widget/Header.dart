import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Header extends StatelessWidget {
  final String str;
  Header(this.str);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      margin: const EdgeInsets.only(right: 15, left: 15),
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
