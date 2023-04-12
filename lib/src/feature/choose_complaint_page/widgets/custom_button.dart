import 'package:flutter/material.dart';
import 'package:test_task/src/common/style/colors.dart';

class CustomButton extends StatelessWidget {
  final Function() onTap;
  final String title;
  const CustomButton({Key? key, required this.onTap, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 52,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: AppColors.c3A86FF,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontFamily: "Nunito"
          ),
        ),
      ),
    );
  }
}
