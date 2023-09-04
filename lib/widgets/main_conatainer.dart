import 'package:flutter/material.dart';

import '../utils/constants/color.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({
    super.key,
    required this.child
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(5)),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: child
    );
  }
}
