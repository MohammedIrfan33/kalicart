import 'package:flutter/material.dart';
import 'package:kalicart/utils/constants/color.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.label, required this.onPressed
  });

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Set width to full width

      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor:
              AppColors.primaryColor, // Set button color
        ),
        child:  Text(
          label,
          style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
