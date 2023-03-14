import 'package:flutter/material.dart';

import '../screens/ProductDetail.dart';

class Product_item extends StatelessWidget {
  final String id;
  final String title;
  final String description;
  final String ImageURL;
  final double Price;

  Product_item(
      {this.id, this.title, this.description, this.ImageURL, this.Price});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 167,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .pushNamed(ProductDetail.routename, arguments: id);
              },
              child: Container(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(ImageURL,
                    height: 120, width: 170, fit: BoxFit.cover),
              )),
            ),
            Container(
                margin: const EdgeInsets.only(top: 10),
                child: Text(title,
                    style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.bold,
                        fontSize: 17))),
            Container(
                margin: const EdgeInsets.only(top: 5, bottom: 10),
                child: Text(
                  description,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.grey),
                )),
            Row(
              children: [
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {
                              print("un fav");
                            },
                            child: Container(
                                child: const Icon(Icons.favorite_border,
                                    size: 20))),
                        InkWell(
                            onTap: () {
                              print("fav");
                            },
                            child: Container(
                                child: const Icon(Icons.favorite, size: 20))),
                      ]),
                ),
                const SizedBox(width: 7),
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              print("-");
                            },
                            child: Container(
                                child: const Text(
                              "-",
                              style: TextStyle(fontSize: 20),
                            )),
                          ),
                          Container(
                              child: const Text(
                            "1",
                            style: TextStyle(fontSize: 15),
                          )),
                          InkWell(
                            onTap: () {
                              print("+");
                            },
                            child: Container(
                                child: const Text(
                              "+",
                              style: TextStyle(fontSize: 20),
                            )),
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
