
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controllers/category_list_controller.dart';
import '../routes/app_routes_name.dart';
import '../utils/constants/color.dart';

class CategoriesListScreen extends GetView<CategoryListController> {
   CategoriesListScreen({super.key});


  
  
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
      ),

      body: Column(
        children: [

          Container(
            height: 40.h,
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.grey[300],
                border: Border.all(color: Colors.grey) // Gray background color
                ),
            child: const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ), // Search icon
                hintText: 'Search', // Hint text
                hintStyle: TextStyle(color: Colors.grey), // Hint text color
                border: InputBorder.none, // Remove the default border
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => Card(
              margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child:  ListTile(
                title:   Text('Category $index'),
                trailing: IconButton(onPressed: () {

                  Get.toNamed(Routes.catergoryProductScreen);


                  
                }, icon: const Icon(Icons.keyboard_arrow_right)),
                
              ),
            ),
            
            ))
        ])

    );
  }
}
