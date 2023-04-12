import 'package:flutter/material.dart';
import 'package:test_task/src/common/style/colors.dart';

class CustomTextButton extends StatelessWidget {
  final Function() onTap;
  final String title;
  const CustomTextButton({Key? key, required this.onTap, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(top: 12),
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.c011936,fontFamily: "Nunito"),
        ),
      ),
    );
  }
}
