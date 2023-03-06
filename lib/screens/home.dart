import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:own/widget/FirstPhase/HomeFirstPhase_1.dart';
import 'package:own/widget/Header.dart';
import 'package:provider/provider.dart';

import '../Provider/Product.dart';
import '../widget/FirstPhase/HomeFirstPhase_2.dart';
import '../widget/FirstPhase/HomeFirstPhase_3.dart';
import '../widget/Product_item.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final obj = Provider.of<Products>(context);
    final item = obj.items;
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: const Drawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text("Home"),
        backgroundColor: const Color(0xffd6b738),
        actions: [
          CircleAvatar(
            backgroundColor: const Color(0xffd4d181),
            radius: 17,
            child: IconButton(
                icon: const Icon(
                  Icons.search,
                  size: 20,
                  color: Colors.black,
                ),
                onPressed: () {}),
          ),
          const SizedBox(width: 10),
          CircleAvatar(
            backgroundColor: const Color(0xffd4d181),
            radius: 17,
            child: IconButton(
                icon: const Icon(
                  Icons.shop,
                  size: 20,
                  color: Colors.black,
                ),
                onPressed: () {}),
          ),
          const SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                FirstPhase(),
                FirstPhase_2(),
                FirstPhase_3(),
              ],
            ),
            Header("Herbs Seasoning"),
            Container(
              height: 230,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: item.length,
                itemBuilder: (context, index) => Product_item(
                  title: item[index].title,
                  description: item[index].description,
                  ImageURL: item[index].imageUrl,
                  Price: item[index].price,
                ),
              ),
            ),
            Header("Herbs Seasoning"),
          ],
        ),
      ),
    );
  }
}
