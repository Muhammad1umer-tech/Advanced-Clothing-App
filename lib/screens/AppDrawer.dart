import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:own/screens/ManageProducts.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 150, color: Colors.red),
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: Column(
            children: [
              Divider(),
              Container(
                child: Row(
                  children: const [
                    Icon(Icons.home),
                    SizedBox(width: 15),
                    Text("Home")
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                child: Row(
                  children: const [
                    Icon(Icons.money),
                    SizedBox(width: 15),
                    Text("Review Orders")
                  ],
                ),
              ),
              SizedBox(height: 5),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context, rootNavigator: true)
                      .pushNamed(ManageProducts.routename);
                },
                child: Container(
                  child: Row(
                    children: const [
                      Icon(Icons.edit),
                      SizedBox(width: 15),
                      Text("Manage Products")
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
