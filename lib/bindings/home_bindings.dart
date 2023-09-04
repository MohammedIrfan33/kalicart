import 'package:get/get.dart';
import 'package:kalicart/controllers/home_controller.dart';

class HomeBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() =>  HomeController());
  }


}