import 'package:get/get.dart';
import 'package:kalicart/controllers/category_product.dart';

class CategoryProductBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryProductController());
  }

  
}