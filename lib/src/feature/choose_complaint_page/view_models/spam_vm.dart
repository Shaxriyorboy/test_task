import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_task/src/data/entities/spam_request.dart';
import 'package:test_task/src/data/repository/app_repository_impl.dart';

class SpamVM with ChangeNotifier, DiagnosticableTreeMixin {
  bool isLoading = false;
  String title = "";
  TextEditingController controller = TextEditingController();

  Future<void> sendSpam() async{
    isLoading = true;
    notifyListeners();
    if(controller.text.trim().isNotEmpty){
      final request = SpamRequest(toUserId: 1, category: "Спам", text: controller.text.trim());
      final response = await AppRepositoryImpl().sendSpam(request);
      if(response.code == 200){
        controller.clear();
        notifyListeners();
      }
    }
    isLoading = false;
    notifyListeners();
  }

  void onTapTitle(String title){
    this.title = title;
    notifyListeners();
  }

  /// Makes `Counter` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('controller', controller.text));
    properties.add(StringProperty('title',title));
  }
}