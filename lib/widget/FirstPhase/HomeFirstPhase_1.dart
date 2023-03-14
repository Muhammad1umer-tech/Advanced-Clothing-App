import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:own/Dimension/Dimension.dart';

class FirstPhase extends StatelessWidget {
  const FirstPhase({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      height: Dimensions.HomePhase1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          'https://tse3.mm.bing.net/th?id=OIP.PutbPxEidV8uEH41j9nbFAHaEH&pid=Api&P=0',
          // height: 150,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
