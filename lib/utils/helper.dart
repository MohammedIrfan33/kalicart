class  Helper {

  static bool emailValidator(String email){

      final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
     return emailRegExp.hasMatch(email);
  }
  
}