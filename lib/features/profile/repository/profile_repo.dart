import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../utils/api_urls.dart';
import '../modals/user_model.dart';

class ProfileRepository {
  Future<User> getProfileData() async {
    final Uri url = ApiUrls.prod().currentUser;

    // We can improve the http calls by adding a interceptor and unifying the
    // json decoding to avoid duplicate code.
    final response = await http.get(url);
    final body = response.body;
    final jsonBody = jsonDecode(body);

    if (jsonBody['results'] is! List && jsonBody['results'].length != 1) {
      throw Exception("malformed response");
    }

    return User.fromJson(jsonBody['results'][0]);
  }
}
