import 'kwara.dart';
import 'morty.dart';

//
// --- Example Usage ---
//

void main() async {
  const url = 'https://rickandmortyapi.com/api/character';

  try {
    // Pass 'fromJson' as a function (Wrap the static method)
    final morty = await Kwara<Morty>(
      url,
      fromJson: (json) => Morty.fromJson(json), // Wrap it in a function
    );

    print('Total Characters: ${morty.info.count}');
    print('First Character: ${morty.results.first.name}');
  } catch (e) {
    print('Error: $e');
  }
}
