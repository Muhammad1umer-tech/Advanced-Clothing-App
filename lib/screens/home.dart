import 'package:flutter/material.dart';
import 'package:own/screens/AppDrawer.dart';
import 'package:provider/provider.dart';

import 'package:own/widget/FirstPhase/HomeFirstPhase_1.dart';
import 'package:own/widget/Header.dart';
import '../widget/FirstPhase/HomeFirstPhase_2.dart';
import '../widget/FirstPhase/HomeFirstPhase_3.dart';
import '../widget/Product_item.dart';
import '../Dimension/Dimension.dart';
import '../Provider/Product.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final obj = Provider.of<Products>(context);
    final item = obj.items;
    final categoryitem = obj.getgetCategories;
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: Drawer(
        child: AppDrawer(),
      ),
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
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: categoryitem.length,
              shrinkWrap: true,
              itemBuilder: (context, a) {
                return Column(
                  children: [
                    Header(categoryitem[a]),
                    Container(
                      height: 230,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: item.length,
                        itemBuilder: (context, index) {
                          // Row(children: [
                          if (categoryitem[a] == item[index].category) {
                            return Product_item(
                              id: item[index].id,
                              title: item[index].title,
                              description: item[index].description,
                              ImageURL: item[index].imageUrl,
                              Price: item[index].price,
                            );
                          } else {
                            return Container();
                          }
                          //]);
                        },
                      ),
                    ),
                  ],
                );
              },
            )
            // Container(
            //   margin: EdgeInsets.only(left: 5, right: 5),
            //   height: Provider.of<Products>(context).heightCategory,
            //   child: ListView.builder(
            //     physics: ClampingScrollPhysics(),
            //     itemCount: categoryitem.length,
            //     itemBuilder: (context, a) => Container(
            //       child: ListView(
            //         shrinkWrap: true,
            //         physics: ClampingScrollPhysics(),
            //         children: [
            //           Header(categoryitem[a]),
            //           Container(
            //             height: 230,
            //             child: ListView.builder(
            //                 scrollDirection: Axis.horizontal,
            //                 itemCount: item.length,
            //                 itemBuilder: (context, index) {
            //                   if (categoryitem[a] == item[index].category) {
            //                     return Product_item(
            //                       id: item[index].id,
            //                       title: item[index].title,
            //                       description: item[index].description,
            //                       ImageURL: item[index].imageUrl,
            //                       Price: item[index].price,
            //                     );
            //                   }
            //                   return Container();
            //                 }
            // ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
