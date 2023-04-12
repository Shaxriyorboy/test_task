import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_task/src/common/style/colors.dart';
import 'package:test_task/src/feature/choose_complaint_page/view_models/spam_vm.dart';
import 'package:test_task/src/feature/choose_complaint_page/widgets/choose_body.dart';
import 'package:test_task/src/feature/choose_complaint_page/widgets/result_body.dart';
import 'package:test_task/src/feature/choose_complaint_page/widgets/spam_body.dart';
import '../widgets/custom_app_bar.dart';

class ChooseComplaintPage extends StatelessWidget {
  const ChooseComplaintPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16,),
            CustomAppBar(
              name: 'Константин Володарский',
              icon: Icons.arrow_back,
              onTap: () {
                if(context.read<SpamVM>().title=="Спам"){
                  context.read<SpamVM>().onTapTitle("");
                }else if(context.read<SpamVM>().title=="result"){
                  context.read<SpamVM>().onTapTitle("Спам");
                }
              },
            ),
            context.watch<SpamVM>().title == ""
                ? const ChooseBody()
                : context.watch<SpamVM>().title == "Спам"
                    ? Stack(
                      children: [
                        const SpamBody(),
                        context.watch<SpamVM>().isLoading?Container(
                          color: AppColors.white.withOpacity(0.3),
                          child: const Center(child: LinearProgressIndicator()),
                        ):const SizedBox.shrink(),
                      ],
                    )
                    : const ResultBody(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(
          icon: Image.asset("assets/icons/home.png"),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/icons/menu.png"),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/icons/add.png"),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/icons/search.png"),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/icons/profile.png"),
          label: '',
        ),
      ],

      ),
    );
  }
}
