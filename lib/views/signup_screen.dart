import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:kalicart/utils/constants/color.dart';

import '../controllers/auth_controller.dart';
import '../routes/app_routes_name.dart';
import '../utils/helper.dart';
import '../widgets/form_text_field.dart';
import '../widgets/main_conatainer.dart';
import '../widgets/password_field.dart';
import '../widgets/primary_button.dart';

class SignUpScreen extends GetView<AuthController> {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    controller.signupFormKey = GlobalKey<FormState>();
    const height20 = SizedBox(
                        height: 20,
                      );
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: controller.signupFormKey,
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
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                     const Text(
                        'Welcome',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w900),
                      ),
                      const Text(
                        'Please register your account',
                        style: TextStyle(fontSize: 13, letterSpacing: -1),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FormTextField(
                        hint: 'Enter  email',
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
                       PasswordTextField(),
      
                      height20,
                      
      
                      FormTextField(
                        hint: 'First name',
                        validator: (value){
                          if(value == null || value.isEmpty){
                            return 'Enter your first name';
      
                          }
                        } , 
                      ),
                      height20,
                      FormTextField(
                        hint: 'Last name',
                      ),
                      height20,
                      const IntlPhoneField(
                        showCountryFlag: false,
                        initialCountryCode: 'IN',
                        disableLengthCheck: true,
                        showDropdownIcon: false,
                        decoration: InputDecoration(
                          hintText: 'Enter phone number',
                          hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w800),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.primaryColor),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                      height20,
                      FormTextField(
                        hint: 'Referal code(optional)',
                      ),
                      const SizedBox(height: 30,),
                      Obx(() => controller.isLoading.value ? const CircularProgressIndicator(color: AppColors.primaryColor,) :PrimaryButton(
                        label: 'sign up',
                        onPressed: controller.signUp,
                      ),)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                    text: 'I have an account',
                    style: const TextStyle(
                        fontSize: 12.0,
                        color: AppColors.white,
                        fontWeight: FontWeight.w400),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'sign in ',
                          recognizer: TapGestureRecognizer()..onTap = () {
                            Get.toNamed(Routes.signIn);
                          },
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13.5)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
