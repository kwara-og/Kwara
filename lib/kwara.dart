import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> fetchData() async{
  final url = Uri.parse('https://rickandmortyapi.com/api/character');

  final response = await http.get(url);

  if (response.statusCode == 200){
    final data = jsonDecode(response.body);
    print(data);
  } else{
    print('Request failed with status: ${response.statusCode}');
  }
}