import 'product_model.dart';

class ProductResponse {
  List<ProductModel> products;
  int total;
  int skip;
  int limit;

  ProductResponse(
      {required this.products,
      required this.total,
      required this.skip,
      required this.limit});

  factory ProductResponse.fromJson(Map<String, dynamic> json) {
    return ProductResponse(
      products: (json['products'] as List)
          .map((item) => ProductModel.fromJson(item))
          .toList(),
      total: json['total'],
      skip: json['skip'],
      limit: json['limit'],
    );
  }
}
