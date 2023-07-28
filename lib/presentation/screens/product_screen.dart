import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/product_bloc.dart';
import '../widgets/product_list.dart';
import '../../data/repositories/product_repository.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista de Productos')),
      body: BlocProvider(
        create: (context) => ProductBloc(ProductRepository())..getProducts(),
        child: ProductList(),
      ),
    );
  }
}
