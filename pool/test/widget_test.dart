import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pool/screens/login_screen.dart';
import 'package:pool/screens/home_screen.dart';
import 'package:pool/screens/product_screen.dart'; // Import for ProductScreen
import 'package:pool/models/product.dart'; // Import for Product

void main() {
  testWidgets(
      'Login screen has a Get Started button and transitions to HomeScreen',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LoginScreen()));

    // Verify that the Get Started button is present.
    expect(find.text('Get Started'), findsOneWidget);

    // Tap the Get Started button and trigger a frame.
    await tester.tap(find.text('Get Started'));
    await tester.pumpAndSettle();

    // Verify that the HomeScreen is opened.
    expect(find.byType(HomeScreen), findsOneWidget);
  });

  testWidgets('Home screen displays logo, banner, categories, and products',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: HomeScreen()));

    // Verify that the logo is displayed in the AppBar.
    expect(find.byType(AppBar), findsOneWidget);
    expect(find.byType(Image),
        findsWidgets); // Multiple images (logo, banner, products)

    // Verify that the banner image is displayed.
    expect(find.byType(ClipRRect), findsOneWidget);

    // Verify that the categories bar is displayed.
    expect(find.byType(TextButton),
        findsNWidgets(4)); // Assuming there are 4 categories

    // Verify that the products are displayed.
    expect(find.byType(GridTile),
        findsNWidgets(6)); // Assuming there are 6 products
  });

  testWidgets('Product screen displays product details and buttons',
      (WidgetTester tester) async {
    final product = Product(
      id: '1',
      title: 'Kid\'s Pool 5477',
      price: 150.0,
      imageUrl: 'lib/assets/1.jpg',
    );

    await tester.pumpWidget(MaterialApp(home: ProductScreen(product)));

    // Verify that the product image, title, and price are displayed.
    expect(find.byType(Image), findsOneWidget);
    expect(find.text('Kid\'s Pool 5477'), findsOneWidget);
    expect(find.text('\$150'), findsOneWidget);

    // Verify that the Add to Cart and Buy Now buttons are displayed.
    expect(find.text('Add to Cart'), findsOneWidget);
    expect(find.text('Buy Now'), findsOneWidget);
  });
}
