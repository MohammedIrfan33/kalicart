import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kalicart/controllers/home_controller.dart';
import 'package:kalicart/utils/constants/color.dart';

import '../widgets/row_text.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
      ),
      body: Column(
        children: [
          Container(
            height: 40,
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

          RowText(
            text: 'All Categories',
            buttonText: 'View All',
            onTap: () {

              print('go to categories page ');
              
            },
          ),


        ],
      ),
    );
  }
}
