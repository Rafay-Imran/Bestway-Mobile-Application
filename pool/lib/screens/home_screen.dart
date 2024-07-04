import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_tile.dart';
import '../widgets/categories_bar.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  final List<Product> products = [
    Product(
        id: '1',
        title: "Kid's Pool 5477",
        price: 150.0,
        imageUrl: 'lib/assets/1.jpg'),
    Product(
        id: '2',
        title: 'Infant Pool 1234',
        price: 200.0,
        imageUrl: 'lib/assets/2.jpg'),
    Product(
        id: '3',
        title: 'Infant Pool 5678',
        price: 150.0,
        imageUrl: 'lib/assets/3.jpg'),
    Product(
        id: '4',
        title: "Kid's Pool 1234",
        price: 250.0,
        imageUrl: 'lib/assets/4.jpg'),
    Product(
        id: '5',
        title: 'Adult Pool 5678',
        price: 300.0,
        imageUrl: 'lib/assets/5.jpg'),
    Product(
        id: '6',
        title: 'Adult Pool 1234',
        price: 350.0,
        imageUrl: 'lib/assets/6.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'lib/assets/logo.png',
          fit: BoxFit.contain,
          height: 32,
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.lightBlue, Colors.blue, Colors.indigo],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset('lib/assets/banner.png'),
              ),
            ),
            CategoriesBar(),
            GridView.builder(
              padding: const EdgeInsets.all(10.0),
              itemCount: products.length,
              itemBuilder: (ctx, i) => ProductTile(products[i]),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
