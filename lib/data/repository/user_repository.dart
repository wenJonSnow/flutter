import 'package:male_flutter_app/data/api/apis.dart';

import '../../http.dart'; //  make dio as global top-level variable

class UserRepository {
  static Future login(username, password) async {
    var response = await dio.post(MaleApi.user_login,
        data: {"username": username, "password": password});
    return response.data;
  }
}
