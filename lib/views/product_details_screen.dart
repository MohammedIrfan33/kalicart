

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kalicart/utils/constants/color.dart';

import '../controllers/product_details_controller.dart';

class ProductDetailsScreen extends GetView<ProductDetailsController>{
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        actions: [
          IconButton(onPressed: () {
            
          }, icon: Icon(
            Icons.          ))
        ],
      ),

    );
  }

  
}