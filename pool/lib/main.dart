import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/product_screen.dart'; // Import the ProductScreen
import 'models/product.dart'; // Ensure Product model is correctly imported

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pool App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', // Set initial route to '/'
      routes: {
        '/': (ctx) => LoginScreen(), // '/' route points to LoginScreen
        HomeScreen.routeName: (ctx) =>
            HomeScreen(), // Register HomeScreen with its route name
      },
      onGenerateRoute: (settings) {
        if (settings.name == ProductScreen.routeName) {
          // Ensure that settings.arguments is a Product instance
          if (settings.arguments is Product) {
            final product = settings.arguments as Product;
            return PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  ScaleTransition(
                scale: Tween<double>(begin: 0.5, end: 1.0).animate(
                  CurvedAnimation(
                    parent: animation,
                    curve: Curves
                        .easeInOutCubic, // Adjust curve for smoother animation
                    reverseCurve: Curves
                        .easeInOutCubic, // Optional: Add reverse curve for consistency
                  ),
                ),
                child: FadeTransition(
                  opacity: animation,
                  child: ProductScreen(product: product),
                ),
              ),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return child;
              },
            );
          }
        }
        return null;
      },
    );
  }
}
