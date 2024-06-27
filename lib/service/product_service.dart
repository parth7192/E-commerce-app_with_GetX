import 'dart:convert';
import 'package:getx_app/modal/product_modal.dart';
import 'package:http/http.dart' as http;

class ProductService {
  ProductService._();
  static final ProductService productService = ProductService._();

  String apiLink = "https://dummyjson.com/products";

  Future<List<Product>> initData() async {
    List<Product> products = <Product>[];
    http.Response response = await http.get(
      Uri.parse(apiLink),
    );
    if (response.statusCode == 200) {
      List product = jsonDecode(response.body)['products'];
      products = product.map((e) {
        return Product.fromJson(e);
      }).toList();
    }
    return products;
  }
}
