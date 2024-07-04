import 'package:flutter/material.dart';
import '../models/product.dart'; // Import your Product model

class ProductScreen extends StatelessWidget {
  static const routeName = '/product';

  final Product product;

  ProductScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              product.imageUrl,
              fit: BoxFit.cover,
              height: 300,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.grey, size: 20),
                      SizedBox(width: 8),
                      Text(
                        '(150)',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    '\$${product.price.toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 20, color: Colors.green),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Description:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed gravida augue non tor'
                    'tor malesuada, sed egestas elit tincidunt. '
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed gravida augue non tor'
                    'tor malesuada, sed egestas elit tincidunt. '
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed gravida augue non tor'
                    'tor malesuada, sed egestas elit tincidunt. '
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed gravida augue non tor'
                    'tor malesuada, sed egestas elit tincidunt. '
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed gravida augue non tor'
                    'tor malesuada, sed egestas elit tincidunt. '
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed gravida augue non tor'
                    'tor malesuada, sed egestas elit tincidunt. '
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed gravida augue non tor'
                    'tor malesuada, sed egestas elit tincidunt. '
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed gravida augue non tor'
                    'tor malesuada, sed egestas elit tincidunt.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                      ),
                      child: Text('Buy Now',
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
