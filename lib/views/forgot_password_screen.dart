import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kalicart/controllers/auth_controller.dart';
import 'package:kalicart/widgets/main_conatainer.dart';

import '../utils/constants/color.dart';
import '../widgets/form_text_field.dart';
import '../widgets/primary_button.dart';

class ForgotPassword extends GetView<AuthController> {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Reset password',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold

          ),
        ),
      ),
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
          child: Column(
        children: [
         
          const SizedBox(
            height: 40,
          ),
          MainContainer(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Reset password',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 14),
              ),
              const Text(
                'Please enter your credential',
                style: TextStyle(
                  fontSize: 11,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
               FormTextField(hint: 'Enter your email'),
              const SizedBox(
                height: 20,
              ),
               PrimaryButton(
                onPressed: () {
                  
                },
                label: 'Send OTP')
            ],
          ))
        ],
      )),
    );
  }
}
