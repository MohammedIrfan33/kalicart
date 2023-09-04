
import 'package:get/get.dart';

class HomeController extends GetxController{

  final imageList = [].obs;


 @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    exclusiveOffers();
    
  }
  


  Future<void> exclusiveOffers()async{ 

    try{

      imageList.value = [
        'https://img.freepik.com/premium-psd/tag-special-offer-red-3d-rendering-isolated_363450-1113.jpg',
        'https://img.freepik.com/free-vector/special-offer-modern-sale-banner-template_1017-20667.jpg'
        'https://img.freepik.com/free-vector/special-offer-creative-sale-banner-design_1017-16284.jpg'

      ];

    }catch(e){

      Get.showSnackbar(const GetSnackBar(title: 'Somthing went wrong',));



    }

  }

  
}