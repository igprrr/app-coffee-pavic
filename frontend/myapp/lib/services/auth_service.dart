import 'package:flutter/material.dart';

class AuthService extends ChangeNotifier {
  // final String baseUrl = 'http://192.168.0.31:8000/api/auth/';

  // Future<void> register(String email, String password) async {
  //   final response = await http.post(
  //     Uri.parse('${baseUrl}registration/'),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //     body: jsonEncode(<String, String>{
  //       'email': email,
  //       'password1': password,
  //       'password2': password,
  //     }),
  //   );

  //   print('Response status: ${response.statusCode}');
  //   print('Response body: ${response.body}');

  //   if (response.statusCode != 201) {
  //     throw Exception('Falha no registro');
  //   }
  // }

  // Future<void> login(String email, String password) async {
  //   final response = await http.post(
  //     Uri.parse('${baseUrl}login/'),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //     body: jsonEncode(<String, String>{
  //       'email': email,
  //       'password': password,
  //     }),
  //   );

  //   print('Response status: ${response.statusCode}');
  //   print('Response body: ${response.body}');

  //   if (response.statusCode == 200) {
  //     final prefs = await SharedPreferences.getInstance();
  //     await prefs.setString('token', jsonDecode(response.body)['key']);
  //     notifyListeners();
  //   } else {
  //     throw Exception('Falha no login');
  //   }
  // }

  // Future<void> logout() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.remove('token');
  //   notifyListeners();
  // }

  // Future<bool> isLoggedIn() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   return prefs.containsKey('token');
  // }
}
