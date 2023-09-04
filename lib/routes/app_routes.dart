import 'package:get/get.dart';

import 'package:kalicart/views/forgot_password_screen.dart';
import 'package:kalicart/views/home_screen.dart';
import 'package:kalicart/views/signin_screen.dart';
import 'package:kalicart/views/signup_screen.dart';

import '../bindings/auth_bindings.dart';
import '../bindings/home_bindings.dart';
import 'app_routes_name.dart';

class AppRoutes {
  static const initial = Routes.signIn;

  static final routes = [

    //signup screen
    GetPage(
      name: Routes.signUp,
      page: () => const SignUpScreen(),
      binding: AuthBindings(),
    ),

    //sign in screen
    GetPage(
      name: Routes.signIn,
      page: () => const SignInScreen(),
      binding: AuthBindings(),
    ),
    //forget password
    GetPage(
      name: Routes.forgetPasswordScreen,
      page: () => const ForgotPassword(),
      binding: AuthBindings(),
    ),

    //home screen 

     GetPage(
      name: Routes.homeScreen,
      page: () =>const  HomeScreen(),
      binding: HomeBindings(),
    ),


  ];
}
