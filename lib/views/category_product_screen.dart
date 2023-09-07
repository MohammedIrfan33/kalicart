

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kalicart/controllers/category_product.dart';
import 'package:kalicart/utils/constants/color.dart';

class CategoryProductScreen extends GetView<CategoryProductController> {
  const CategoryProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: const  Text('category name'),
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
              itemBuilder: (context, index) => Container(
                
                color: Colors.white,
                margin: const EdgeInsets.only(bottom:20,right: 10,left:10),
                child: Row(
                  children: [

                    SizedBox(
                      height: 80,
                      width: 80,
                      child: Stack(
                        children: [

                          const Image(image: NetworkImage('https://thumbs.dreamstime.com/b/red-apple-isolated-clipping-path-19130134.jpg')),
                          Positioned(
                            top: 0,
                            left: 0,
                            child:  Container(
                              height: 20,
                              width: 50,
                              decoration:  BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(5)
                              ),
                              child: const Center(
                                child:   Text(
                                  '10.0%',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10
                                  ),
                              
                                  ),
                              ),

                            ))

                        ],
                      ),
                    ),
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                       const  Text(
                          'Apple aaaaaaaaaaaa',
                          style:  TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                       const   Text(
                          '1kg',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                            
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                            text: '\$10  ',
                            style: TextStyle(
                              decoration:TextDecoration.lineThrough ,
                              color: Colors.black,


                            ),
                            children: [
                              TextSpan(
                                text: '\$10',
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.bold
                                )


                              )
                            ]
                          )
                          )
                      
                      ],
                    ),
                    Spacer(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor
                      ),
                      onPressed: () {

                      
                    }, 
                    child: const Text(
                      'Add',
                      style: TextStyle(
                        color:Colors.white,

                      ),
                      )
                    )

                  ],
                ),
              )
              
              ,)
            )



        ],
      ),

    );
  }

  
}