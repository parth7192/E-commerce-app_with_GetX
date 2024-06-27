import 'package:get/get.dart';
import 'package:getx_app/modal/product_modal.dart';
import 'package:getx_app/service/product_service.dart';

class ProductController extends GetxController {
  ProductController() {
    initData();
  }

  RxList<Product> allProduct = <Product>[].obs;
  RxList<Product> cartProduct = <Product>[].obs;
  RxBool isLoading = true.obs;

  Future<void> initData() async {
    allProduct(await ProductService.productService.initData());
    isLoading(false);
  }

  void addToCart({required Product product}) {
    cartProduct.add(product);
  }

  void updateQty(
      {required int index, required Product product, required int qty}) {
    cartProduct[index].qty.value += qty;
    if (index == 0) {
      cartProduct.remove(product);
    }
  }
}
