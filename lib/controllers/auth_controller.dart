

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/user_model.dart';

class AuthController extends GetxController{


  final currentUser = User().obs;

  GlobalKey<FormState>  ?  signupFormKey;
  GlobalKey<FormState> ?  signInFormKey;
  GlobalKey<FormState> ? forgetPasswordFormKey;

  final obscureText = false.obs;

  final isLoading = false.obs;


  void signIn() async{

    Get.focusScope!.unfocus();

   if(signInFormKey!.currentState!.validate()){

    signInFormKey!.currentState!.save();

    try{

      

      isLoading.value = true;

      await Future.delayed(const Duration(seconds: 5));

      isLoading.value = false;

    }catch(e){
      Get.showSnackbar(const GetSnackBar(title: 'Somthing Went wrong',));

    }

   



    

   }
  }

   void signUp() async{

    Get.focusScope!.unfocus();

   if(signupFormKey!.currentState!.validate()){

    signupFormKey!.currentState!.save();

    try{

      

      isLoading.value = true;

      await Future.delayed(const Duration(seconds: 5));

      isLoading.value = false;

    }catch(e){
      Get.showSnackbar(const GetSnackBar(title: 'Somthing Went wrong',));

    }
   }
   }


  void isHidePassword(){

    obscureText.value = !obscureText.value;

  }



  


}