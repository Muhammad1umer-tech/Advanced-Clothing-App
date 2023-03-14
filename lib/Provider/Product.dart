import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:own/Dimension/Dimension.dart';

class Product {
  final String id;
  final String title;
  final String category;
  final String description;
  final double price;
  final String imageUrl;

  Product(
      {@required this.id,
      @required this.title,
      @required this.category,
      @required this.description,
      @required this.price,
      @required this.imageUrl});
}

class Products with ChangeNotifier {
  final List<Product> _item = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      category: "shirt",
      description: 'A red shirt',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Grey shirt',
      category: "shirt",
      description: 'A nice Grey Shirt',
      price: 59.99,
      imageUrl:
          'https://tse1.mm.bing.net/th?id=OIP.SvRjOK8USOxGhdkw7RTcIgHaJ4&pid=Api&P=0',
    ),
    Product(
      id: 'p3',
      title: 'Red Shirt',
      category: "shirt",
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://tse3.mm.bing.net/th?id=OIP.KY-FWqQMeFCqRFH0WcJnSAHaIp&pid=Api&P=0',
    ),
    Product(
      id: 'p4',
      title: 'A Pant',
      category: "pant",
      description: 'Plazo Pant',
      price: 49.99,
      imageUrl:
          'https://tse3.mm.bing.net/th?id=OIP.xhTTIeYjKgOWtMxcmCrJFAHaHa&pid=Api&P=0',
    ),
    Product(
      id: 'p5',
      title: 'A Pant',
      category: "pant",
      description: 'Prepar',
      price: 49.99,
      imageUrl:
          'https://tse2.mm.bing.net/th?id=OIP.ZUpsExHFCvkvx5dLGAmFmQHaOt&pid=Api&P=0',
    ),
    Product(
      id: 'p6',
      title: 'Shoes',
      category: "Shoes",
      description: 'Great Shoes for a walk',
      price: 49.99,
      imageUrl:
          'https://tse2.mm.bing.net/th?id=OIP.OgQJ3-TixXKKmkqofYbGjgHaHa&pid=Api&P=0',
    ),
    Product(
      id: 'p7',
      title: 'Shoes',
      category: "chain",
      description: 'Great Shoes for a walk',
      price: 49.99,
      imageUrl:
          'https://tse3.mm.bing.net/th?id=OIP.BR6mitqRvqsd7mnK4fIziwHaJ4&pid=Api&P=0',
    ),
    Product(
      id: 'p8',
      title: 'Red Shirt',
      category: "shirt",
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://tse3.mm.bing.net/th?id=OIP.KY-FWqQMeFCqRFH0WcJnSAHaIp&pid=Api&P=0',
    ),
    Product(
      id: 'p9',
      title: 'Red Shirt',
      category: "Pillow",
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://tse3.mm.bing.net/th?id=OIP.KY-FWqQMeFCqRFH0WcJnSAHaIp&pid=Api&P=0',
    ),
    Product(
      id: 'p10',
      title: 'Red Shirt',
      category: "Puba",
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://tse3.mm.bing.net/th?id=OIP.KY-FWqQMeFCqRFH0WcJnSAHaIp&pid=Api&P=0',
    ),
    Product(
      id: 'p10',
      title: 'Red Shirt',
      category: "bombastic",
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://tse3.mm.bing.net/th?id=OIP.KY-FWqQMeFCqRFH0WcJnSAHaIp&pid=Api&P=0',
    ),
  ];

  List<Product> get items {
    return [..._item];
  }

  double height;
  List<String> get getgetCategories {
    List<String> cate = [];
    for (int a = 0; a < _item.length; a++) {
      if (!cate.contains(_item[a].category)) {
        cate.add(_item[a].category);
      }
    }
    return cate;
  }

  Product findById(String id) {
    return _item.firstWhere((element) => element.id == id);
  }
}
