class ApiConst {
  static const connectionTimeout = 20000;
  static const sendTimeout = 20000;

  static const baseUrl = 'http://89.108.103.40/';

  // Courses api
  static const spam = 'complaint/profile';
}

class ApiParams {
  const ApiParams._();

  static Map<String, dynamic> cabinetSmsSendParams({required String phone}) => <String, dynamic>{
        'phone': phone,
      };

  static Map<String, dynamic> cabinetSmsCheckParams({required String phone, required String code}) => <String, dynamic>{
        'phone': phone,
        'code': code,
      };

  static Map<String, dynamic> emptyParams() => <String, dynamic>{};

  static Map<String, dynamic> cabinetAddCardParams({required String cardNumber, required String date}) => <String, dynamic>{
        'card': cardNumber,
        'exp': date,
      };

  static Map<String, dynamic> cabinetAddCardConfirmParams({required String cardNumber, required String date, required String code}) => <String, dynamic>{
        'card': cardNumber,
        'exp': date,
        'code': code,
      };
}
