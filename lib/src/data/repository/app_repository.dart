import 'package:test_task/src/data/entities/spam_request.dart';
import 'package:test_task/src/data/entities/spam_response.dart';

abstract class AppRepository {
  Future<SpamResponse> sendSpam(SpamRequest request);
}
