import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/style/colors.dart';
import '../view_models/spam_vm.dart';
import 'custom_button.dart';

class SpamBody extends StatelessWidget {
  const SpamBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Спам",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,fontFamily: "Nunito"),
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            "Отправьте жалобу, если пользователь рассылает рекламные сообщения, комментарии или другим способом распространяет рекламу в непредназначенных для этого местах.",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff011936),fontFamily: "Nunito"),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Комментарий (необязательно)",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.c808C9A,
              fontFamily: "Nunito"
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 112,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: AppColors.cE6E8EB,
            ),
            padding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: TextField(
              controller: context.read<SpamVM>().controller,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff011936),
                fontFamily: "Nunito"
              ),
              maxLines: 5,
              decoration: const InputDecoration(
                  hintText: "Опишите причину жалобы",
                  hintStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff808C9A),
                    fontFamily: "Nunito",
                  ),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  enabledBorder: InputBorder.none),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
            onTap: () {
              context.read<SpamVM>().sendSpam().then((value) {
                context.read<SpamVM>().onTapTitle("result");
              });
            },
            title: 'Отправить жалобу',
          ),
        ],
      ),
    );
  }
}
