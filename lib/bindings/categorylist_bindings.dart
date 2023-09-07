import 'package:get/get.dart';

import '../controllers/category_list_controller.dart';

class CategoryListBindings extends Bindings{
  @override
  void dependencies() {

    Get.lazyPut(() => CategoryListController());

    // TODO: implement dependencies
  }



}

