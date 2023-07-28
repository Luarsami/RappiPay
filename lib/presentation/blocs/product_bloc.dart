import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/product_model.dart';
import '../../data/repositories/product_repository.dart';

class ProductBloc extends Cubit<List<ProductModel>> {
  final ProductRepository repository;

  ProductBloc(this.repository) : super([]);

  Future<void> getProducts() async {
    try {
      final response = await repository.fetchProducts();
      emit(response.products);
    } catch (e) {
      emit([]);
    }
  }
}
