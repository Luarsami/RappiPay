import 'package:flutter/material.dart';
import 'presentation/screens/product_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product List App',
      home: ProductScreen(),
    );
  }
}
