<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

Kwara API Helper is a Flutter package designed to make working with APIs easy and efficient. It simplifies the process of fetching JSON data from APIs and parsing it into Dart objects, reducing the amount of boilerplate code and improving maintainability. With built-in error handling and customizable parsing, this package streamlines API integration in Flutter apps.

Features
-Easily fetch and parse JSON data into Dart models.

-Simplified API error handling.

-Customizable model parsing with the fromJson function.

-Flexible and easy to use in any Flutter project.

Getting started
To get started with Kwara API Helper, you need to add it to your pubspec.yaml:

yaml
Copy
Edit
dependencies:
  kwara_api_helper:
    git:
      url: https://github.com/kwara-og/Kwara
Ensure you have the required dependencies, like http for making HTTP requests.

Usage
Here’s an example of how to use Kwara API Helper to fetch and parse data:

dart
Copy
Edit
import 'package:kwara_api_helper/kwara.dart';
import 'morty.dart'; // Custom model

void main() async {
  const url = 'https://rickandmortyapi.com/api/character';

  try {
    final morty = await Kwara<Morty>(
      url,
      fromJson: (json) => Morty.fromJson(json),
    );

    print('Total Characters: ${morty.info.count}');
    print('First Character: ${morty.results.first.name}');
  } catch (e) {
    print('Error: $e');
  }
}
Additional information
For more details, visit the GitHub repository.

To contribute to this package, please fork the repo, create a pull request, and submit your changes.

If you encounter issues, please file them under the Issues tab.

You can also check the example folder for more detailed use cases.