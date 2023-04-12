import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_models/spam_vm.dart';
import 'custom_button.dart';

class ResultBody extends StatelessWidget {
  const ResultBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage("assets/images/star.png"),height: 64,width: 64,),
            const SizedBox(
              height: 24,
            ),
            const Text(
              "Спасибо!",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,fontFamily: "Nunito"),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              "Модераторы скоро рассмотрят вашу жалобу.",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff011936),fontFamily: "Nunito"),
            ),
            const SizedBox(
              height: 24,
            ),
            CustomButton(onTap: () {
              context.read<SpamVM>().onTapTitle("");
            }, title: 'Закрыть',),
            const SizedBox(height: 100,),
          ],
        ),
      ),
    );
  }
}
