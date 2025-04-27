import 'dart:convert';
import 'package:http/http.dart' as http;

//
// --- HTTP Fetcher Function ---
//

Future<T> Kwara<T>(
    String url, {
      required T Function(Map<String, dynamic> json) fromJson,
    }) async {
  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonMap = jsonDecode(response.body);
      return fromJson(jsonMap);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    throw Exception('Error fetching data: $e');
  }
}





// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// abstract class ApiModel {
//   ApiModel fromJson(Map<String, dynamic> json);
// }
//
// /// Generic function to fetch data from an API and parse it into an object of type [T].
// Future<T> Kwara<T extends ApiModel>(
//     String url, {
//       required T Function(Map<String, dynamic> json) fromJson,
//     }) async {
//   try {
//     final response = await http.get(Uri.parse(url));
//
//     if (response.statusCode == 200) {
//       final Map<String, dynamic> jsonMap = jsonDecode(response.body);
//       return fromJson(jsonMap);
//     } else {
//       throw Exception('Failed to load data: ${response.statusCode}');
//     }
//   } catch (e) {
//     throw Exception('Error fetching data: $e');
//   }
// }









// import 'dart:convert';
//
// import 'package:http/http.dart' as http;
//
// /// Fetches data from a given [url] and returns it as a dynamic object.
// /// Throws an [Exception] if the request fails.
// Future<dynamic> Kwara(String url) async {
//   try {
//     final response = await http.get(Uri.parse(url));
//
//     if (response.statusCode == 200) {
//       return jsonDecode(response.body);
//     } else {
//       throw Exception('Failed to load data: ${response.statusCode}');
//     }
//   } catch (e) {
//     throw Exception('Error fetching data: $e');
//   }
// }