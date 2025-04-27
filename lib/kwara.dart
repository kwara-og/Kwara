import 'dart:convert';

import 'package:http/http.dart' as http;

/// Fetches data from a given [url] and returns it as a dynamic object.
/// Throws an [Exception] if the request fails.
Future<dynamic> Kwara(String url) async {
  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    throw Exception('Error fetching data: $e');
  }
}