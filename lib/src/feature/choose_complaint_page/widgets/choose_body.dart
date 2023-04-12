import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/style/colors.dart';
import '../view_models/spam_vm.dart';
import 'custom_text_button.dart';

class ChooseBody extends StatelessWidget {
  const ChooseBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Что на странице Контантина кажется вам недопустимым?",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: AppColors.c011936,fontFamily: "Nunito"),
          ),
          CustomTextButton(
            onTap: () {
              context.read<SpamVM>().onTapTitle("Спам");
            },
            title: 'Спам',
          ),
          CustomTextButton(
            onTap: () {},
            title: 'Мошенничество',
          ),
          CustomTextButton(
            onTap: () {},
            title: 'Оскорбления',
          ),
          CustomTextButton(
            onTap: () {},
            title: 'Откровенное изображение',
          ),
          CustomTextButton(
            onTap: () {},
            title: 'Проблема с профилем',
          ),
          CustomTextButton(
            onTap: () {},
            title: 'Нарушение интеллектуальных прав',
          ),
          CustomTextButton(
            onTap: () {},
            title: 'Прочее',
          ),
        ],
      ),
    );
  }
}
