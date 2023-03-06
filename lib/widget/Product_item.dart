import 'package:flutter/material.dart';

class Product_item extends StatelessWidget {
  final String title;
  final String description;
  final String ImageURL;
  final double Price;

  Product_item({this.title, this.description, this.ImageURL, this.Price});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(ImageURL,
                  height: 120, width: 170, fit: BoxFit.cover),
            )),
            Container(
                margin: const EdgeInsets.only(top: 10),
                child: Text(title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17))),
            Container(
                margin: const EdgeInsets.only(top: 5, bottom: 10),
                child: Text(description,
                    style: const TextStyle(color: Colors.grey))),
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
                        Container(
                            child: const Icon(Icons.favorite_border, size: 20)),
                        Container(child: const Icon(Icons.favorite, size: 20)),
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
                          Container(
                              child: const Text(
                            "-",
                            style: TextStyle(fontSize: 20),
                          )),
                          Container(
                              child: const Text(
                            "1",
                            style: TextStyle(fontSize: 15),
                          )),
                          Container(
                              child: const Text(
                            "+",
                            style: TextStyle(fontSize: 20),
                          )),
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
