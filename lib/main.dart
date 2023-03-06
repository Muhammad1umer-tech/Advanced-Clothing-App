import 'package:flutter/material.dart';
import 'package:own/screens/home.dart';
import 'package:provider/provider.dart';

import './auth/sign_in.dart';
import 'Provider/Product.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
