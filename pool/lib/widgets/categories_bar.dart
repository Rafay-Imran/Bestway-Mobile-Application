import 'package:flutter/material.dart';

class CategoriesBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            onPressed: () {},
            child: Text('All'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Kids Pools'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Infants Pools'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Adults Pools'),
          ),
        ],
      ),
    );
  }
}
