import 'package:not_kwara/kwara.dart';

void main() async{
  const url = 'https://rickandmortyapi.com/api/character';

  try {
    final data = await Kwara(url);
    print(data);
  } catch (e) {
    print('Error: $e');
  }
}