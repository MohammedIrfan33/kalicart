import 'package:get/get.dart';
import 'package:kalicart/controllers/product_details_controller.dart';

class ProductDetailsBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ProductDetailsController());
  }



}