import 'dart:convert';
import 'package:l/l.dart';
import 'package:test_task/src/data/entities/spam_request.dart';

import '../../common/server/api/api.dart';
import '../../common/server/api/api_constants.dart';
import '../entities/spam_response.dart';
import 'app_repository.dart';

class AppRepositoryImpl implements AppRepository {
  @override
  Future<SpamResponse> sendSpam(SpamRequest request) async {
    final response = await ApiService.post(
      ApiConst.spam,
      request.toJson(),
    );

    final data = SpamResponse.fromJson(jsonDecode(response??""));

    l.d(data);

    return data;
  }
}
