import 'package:flutter/material.dart';
import '../models/product.dart';
import '../screens/product_screen.dart';

class ProductTile extends StatelessWidget {
  final Product product;

  ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ProductScreen.routeName,
              arguments: product,
            );
          },
          child: Image.asset(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: Container(
          color: Colors.black87,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              children: [
                Text(product.title, style: TextStyle(color: Colors.white)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 12),
                    Icon(Icons.star, color: Colors.yellow, size: 12),
                    Icon(Icons.star, color: Colors.yellow, size: 12),
                    Icon(Icons.star, color: Colors.yellow, size: 12),
                    Icon(Icons.star, color: Colors.grey, size: 12),
                    SizedBox(width: 4),
                    Text('(150 sold)',
                        style: TextStyle(color: Colors.white.withOpacity(0.6))),
                  ],
                ),
                Text('\$${product.price}',
                    style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
