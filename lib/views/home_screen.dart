import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
              child: SingleChildScrollView(
            child: Column(
              children: [

                //category listing
                RowText(
                  text: 'All Categories',
                  buttonText: 'View All',
                  onTap: () {
                    print('go to categories page ');
                  },
                ),
                SizedBox(
                  height: 80.h,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.only(right: 5),
                      width: 100.w,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Column(
                          children: [
                            Icon(Icons.shop_2_outlined),
                            Text(
                              'category name 1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                //offer baner section
                RowText(
                  text: 'Exclusive Offers',
                  buttonText: 'View All',
                  onTap: () {},
                ),
                Obx(() => CarouselSlider(
                      items: controller.imageList
                          .map((e) => Image.network(e))
                          .toList(),
                      options: CarouselOptions(autoPlay: true, height: 80),
                    )),

                //customer top picked
                RowText(
                  text: 'Top Picked',
                  buttonText: 'View All',
                  onTap: () {},
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  height: 250.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) => Container(
                      clipBehavior: Clip.hardEdge,
                      margin: const EdgeInsets.all(10),
                      height: double.maxFinite,
                      width: 170.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: .5,
                              blurRadius: 2,
                              offset: const Offset(0, 3),
                            ),
                          ]),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                SizedBox(
                                  width: double.maxFinite,
                                  child: Image.network(
                                    'https://media.istockphoto.com/id/184927564/photo/close-up-of-red-royal-gala-apples.jpg?s=2048x2048&w=is&k=20&c=cZSKDwXZUe0jWu37Imf3USEGO55Ygu7-j5x78RjSJcU=',
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                Positioned(
                                    top: 5,
                                    left: 0,
                                    child: Container(
                                      width: 50,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius:
                                              BorderRadius.circular(5.r)),
                                      child: const Text(
                                        'offer',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 13),
                                      ),
                                    )),
                                Positioned(
                                    top: 5,
                                    right: 5,
                                    child: Container(
                                      height: 18,
                                      width: 18,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: AppColors.primaryColor,
                                              width: 2)),
                                      child: Center(
                                          child: Container(
                                        height: 5,
                                        width: 5,
                                        decoration: const BoxDecoration(
                                            color: AppColors.primaryColor,
                                            shape: BoxShape.circle),
                                      )),
                                    ))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Apple',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  '1kg',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                RichText(
                                  text: const TextSpan(
                                    text: ' \$3.99  ',
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: Colors.grey),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '\$8.99',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            decoration: TextDecoration.none),
                                      ),
                                    ],
                                  ),
                                ),
                                 const SizedBox(
                                  height: 5,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        backgroundColor: AppColors.primaryColor,
                                        padding: const EdgeInsets.all(5)),
                                    onPressed: () {},
                                    child: Text('add'),
                                  ),
                                ),
                                 const SizedBox(height: 10,)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                 RowText(
                  text: 'Top Store',
                  buttonText: 'View All',
                  onTap: () {},
                ),

                Container(
                  padding: const EdgeInsets.only(left: 10),
                  height: 260.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) => Container(
                      clipBehavior: Clip.hardEdge,
                      margin: const EdgeInsets.all(10),
                      height: double.maxFinite,
                      width: 190.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: .5,
                              blurRadius: 2,
                              offset: const Offset(0, 3),
                            ),
                          ]),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: SizedBox(
                              width: double.maxFinite,
                              child: Image.network(
                                'https://media.istockphoto.com/id/184927564/photo/close-up-of-red-royal-gala-apples.jpg?s=2048x2048&w=is&k=20&c=cZSKDwXZUe0jWu37Imf3USEGO55Ygu7-j5x78RjSJcU=',
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'Apple',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'abcd street calicut',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),

                                const Text(
                                  'Apple',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      ),
                                ),

                               
                                 const SizedBox(
                                  height: 5,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor: AppColors.primaryColor,
                                      padding: const EdgeInsets.all(5)),
                                  onPressed: () {},
                                  child: const Text('view'),
                                ),
                                const SizedBox(height: 10,)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          )),
        ],
      ),
    );
  }
}
