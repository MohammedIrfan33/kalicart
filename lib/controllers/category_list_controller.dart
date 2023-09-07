import 'package:get/get.dart';
import 'package:kalicart/models/category_model.dart';


class CategoryListController extends GetxController{


  final   categoriesList = <CategoryItem>[].obs;

 
  @override
  void onInit(){

    getCategoryList();

    super.onInit();
  }



  void getCategoryList(){

    try{
      categoriesList.value = [
        CategoryItem(
          header: 'item1',
          data: 'data 1',
          isExpanded: false
        ),
        CategoryItem(
          header: 'item2',
          data: 'data 2',
          isExpanded: false
        ),
        CategoryItem(
          header: 'item3',
          data: 'data 3',
          isExpanded: false
        ),
      ]; 

      

    }catch(e){

      Get.showSnackbar(GetSnackBar(title: 'Somthing went wrong',));
    }
  }

  void toggleExpansion(bool isExpanded,int index){

    categoriesList[index].isExpanded = isExpanded;


  }



}