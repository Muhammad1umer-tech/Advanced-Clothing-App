import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:own/Provider/Product.dart';
import 'package:provider/provider.dart';

class ProductDetail extends StatelessWidget {
  static const routename = '/ProductDetail';

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as String;
    final Product = Provider.of<Products>(context).findById(id);
    return Scaffold(
      body: Stack(
        children: [
          Image.network(Product.imageUrl),
          Container(
            margin: EdgeInsets.only(top: 380),
            child: Row(
              children: [
                SizedBox(width: 10),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.favorite, size: 40)),
                Spacer(),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.shopping_bag, size: 40)),
                SizedBox(width: 10),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 450),
            decoration: const BoxDecoration(
                color: Color(0xffcbcbcb),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            height: 400,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Container(
                    child: Text(
                  Product.title,
                  style: TextStyle(fontSize: 20),
                )),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Wrap(
                      children: List.generate(
                        5,
                        (index) => Icon(Icons.star),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text("4.5", style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
