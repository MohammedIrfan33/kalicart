import 'package:get/get.dart';
import 'package:kalicart/views/category_list_screen.dart';
import 'package:kalicart/views/category_product_screen.dart';

import 'package:kalicart/views/forgot_password_screen.dart';
import 'package:kalicart/views/home_screen.dart';
import 'package:kalicart/views/signin_screen.dart';
import 'package:kalicart/views/signup_screen.dart';

import '../bindings/auth_bindings.dart';
import '../bindings/category_product_binding.dart';
import '../bindings/categorylist_bindings.dart';
import '../bindings/home_bindings.dart';
import '../bindings/product_bindings.dart';
import '../views/product_details_screen.dart';
import 'app_routes_name.dart';

class AppRoutes {
  static const initial = Routes.categoryListScreen;

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
      page: () => const HomeScreen(),
      binding: HomeBindings(),
    ),
    //category list screen

    GetPage(
      name: Routes.categoryListScreen,
      page: () => CategoriesListScreen(),
      binding: CategoryListBindings(),
    ),

    //category product screen
    GetPage(
      name: Routes.catergoryProductScreen,
      page: () => CategoryProductScreen(),
      binding: CategoryProductBindings()
    ),
    //product details screen
    GetPage(
      name: Routes.catergoryProductScreen, 
      page: () => ProductDetailsScreen(),
      binding:ProductDetailsBindings()
      )
  ];
}
