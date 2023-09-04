import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kalicart/controllers/auth_controller.dart';
import 'package:kalicart/routes/app_routes_name.dart';
import 'package:kalicart/utils/helper.dart';
import 'package:kalicart/widgets/form_text_field.dart';
import 'package:kalicart/widgets/main_conatainer.dart';

import 'package:kalicart/widgets/primary_button.dart';

import '../utils/constants/color.dart';
import '../widgets/password_field.dart';

class SignInScreen extends GetView<AuthController> {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    controller.signInFormKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
                key: controller.signInFormKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Kalicart',
                      style: TextStyle(
                          color: AppColors.white, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    MainContainer(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Text(
                              'Welcome',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 14),
                            ),
                            const Text(
                              'Please login your account',
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            FormTextField(
                              hint: 'Enter you email',
                              onSaved: (newValue) =>  controller.currentUser.value.email = newValue!,
                              validator: (value) {
          
                                if(value!.isEmpty){
                                  return 'Enter your email';
          
                                }else if (Helper.emailValidator(value)) {
                                  return null;
                                } else {
                                  return 'Enter email correctly';
                                }
                              },
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                             PasswordTextField(onSaved: (newValue) =>  controller.currentUser.value.password = newValue!,),
                            const SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                  onPressed: () {
                                    Get.toNamed(Routes.forgetPasswordScreen);
                                  },
                                  child: const Text(
                                    'Forgot Password?',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.primaryColor),
                                  )),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Obx(() {
                              return controller.isLoading.value
                                  ? const Center(
                                      child: CircularProgressIndicator(
                                        color: AppColors.primaryColor,
                                      ),
                                    )
                                  : PrimaryButton(
                                      onPressed: () {
                                        print('clicked');
                                        controller.signIn();
                                      },
                                      label: 'Sign in');
                            })
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Don\'t have an account',
                        style: const TextStyle(
                            fontSize: 12.0,
                            color: AppColors.white,
                            fontWeight: FontWeight.w400),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'sign up ',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.toNamed(Routes.signUp);
                                },
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13.5)),
                        ],
                      ),
                    ),
                  ],
                )),
          )),
    );
  }
}
