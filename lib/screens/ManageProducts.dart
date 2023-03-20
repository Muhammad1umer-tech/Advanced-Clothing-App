import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:own/Provider/Product.dart';
import 'package:provider/provider.dart';

class ManageProducts extends StatelessWidget {
  static const routename = '/ManageProducts';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manage Products"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
      ),
      body: Consumer<Products>(builder: (context, val, child) {
        final item = val.items;
        return ListView.builder(
          itemCount: item.length,
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(item[index].id),
                const Spacer(),
                IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
              ],
            );
          },
        );
      }),
    );
  }
}
