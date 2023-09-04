import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kalicart/controllers/auth_controller.dart';
import 'package:kalicart/utils/constants/color.dart';

class PasswordTextField extends GetView<AuthController> {
   PasswordTextField({
    this.onSaved,
    super.key});

  String Function(String?) ? onSaved;
 
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return TextFormField(
        obscureText: controller.obscureText.value,
        validator: (value)  {
          if(value!.isEmpty){
            return 'Enter your password';
            
          }else if(value.length < 6){
           return 'Password minimum 6 charactor' ;
          }else{
            return null;
          }
        }
        ,
        onSaved: onSaved,
        decoration: InputDecoration(
          hintText: 'Password',
          hintStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
          border: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 0.5),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.primaryColor, width: 0.5),
          ),
          suffixIcon: GestureDetector(
            onTap: () {
              controller.isHidePassword();
            },
            child: Icon(
              controller.obscureText.value
                  ? Icons.visibility
                  : Icons.visibility_off,
              color: AppColors.primaryColor,
            ),
          ),
        ),
      );
    });
  }
}
