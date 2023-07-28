import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/product_bloc.dart';
import '../../data/models/product_model.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, List<ProductModel>>(
      builder: (context, products) {
        if (products.isEmpty) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        return ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return ListTile(
              title: Text(product.title),
              subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
            );
          },
        );
      },
    );
  }
}
