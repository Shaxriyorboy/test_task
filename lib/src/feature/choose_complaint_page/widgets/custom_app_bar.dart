import 'package:flutter/material.dart';
import 'package:test_task/src/common/style/colors.dart';

class CustomAppBar extends StatelessWidget {
  final String name;
  final IconData icon;
  final Function() onTap;

  const CustomAppBar({Key? key, required this.name, required this.icon, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Color(0xffE6E8EB)))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Icon(icon),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 64,
                  width: 64,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.cE6E8EB,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Text(name[0],
                      style: const TextStyle(
                          fontSize: 32, fontWeight: FontWeight.w600,fontFamily: "Nunito")),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600,fontFamily: "Nunito"),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: Icon(icon,color: Colors.white,),
          ),
        ],
      ),
    );
  }
}
