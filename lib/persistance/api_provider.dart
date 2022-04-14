import 'dart:convert';
import 'package:http/http.dart' show Client;
import 'package:lightz/model/category.dart';

class ApiProvider {
  Client client = Client();
  final baseUrl = 'http://localhost:3000/api/';

  Future<List<Category>> fetchCategories() async {
    final response = await client.get(Uri.parse("${baseUrl}categories"));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
      return parsed.map<Category>((json) => Category.fromMap(json)).toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }
}
