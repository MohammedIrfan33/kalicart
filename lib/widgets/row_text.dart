import 'package:flutter/material.dart';
import 'package:kalicart/utils/constants/color.dart';

class RowText extends StatelessWidget {
  const RowText(
      {super.key,
      required this.text,
      required this.buttonText,
      required this.onTap});

  final String text;
  final String buttonText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
          ),
          TextButton(
            onPressed: onTap,
            child: Text(
              buttonText,
              style:  const TextStyle(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w800
    
              ),
            ),
          )
        ],
      ),
    );
  }
}
