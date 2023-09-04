import 'package:flutter/material.dart';
import 'package:kalicart/utils/constants/color.dart';

class FormTextField extends StatelessWidget {
   FormTextField({
    this.validator,
    this.onSaved,
    super.key, required this.hint,
  });

  final String hint;
  String ? Function(String?)? validator;
  String  Function(String?)? onSaved;





  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      cursorColor: AppColors.primaryColor,
      validator: validator,
      onSaved: onSaved,
      decoration:  InputDecoration(
        hintText: hint,
        
        

        hintStyle: const TextStyle(fontSize: 12,fontWeight: FontWeight.w800),

        focusedBorder:  const UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.primaryColor),
      ),
      
      enabledBorder:  const UnderlineInputBorder(
        borderSide: BorderSide(
          
          color: Colors.grey),
      
      ),
      ),
    );
  }
}
