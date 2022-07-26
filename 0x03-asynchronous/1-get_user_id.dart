import 'dart:convert';
import '1-main.dart';

Future<String> getUserId() {
  return fetchUserData().then((user) => json.decode(user)['id']);
}
