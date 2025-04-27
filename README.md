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

# Kwara

Kwara is a Flutter package designed to simplify working with APIs. It streamlines the process of fetching JSON data from APIs and parsing it into Dart objects. This reduces boilerplate code and enhances maintainability, making it easier and more efficient to integrate APIs into your Flutter applications. With built-in error handling and customizable parsing, Kwara provides a smoother experience for Flutter developers.

## Features

- **Easily fetch and parse JSON data** into Dart models.
- **Simplified API error handling** for more robust requests.
- **Customizable model parsing** using the `fromJson` function.
- **Flexible and easy to integrate** into any Flutter project.

## Getting started

To get started with Kwara, add it to your `pubspec.yaml` file:

```yaml
dependencies:
  kwara:
    git:
      url: https://github.com/kwara-og/Kwara
Ensure that you also have required dependencies like http for making HTTP requests.

## **Usage**
Here’s a simple example of how to use the Kwara API Helper to fetch and parse data from an API:

dart
Copy
Edit
import 'package:kwara/kwara.dart';
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
For more detailed use cases, check the /example folder.

## **Additional Information**
For more details, visit the GitHub repository.

To contribute, please fork the repo, create a pull request, and submit your changes.

If you encounter any issues, please file them under the Issues tab in the GitHub repository.

You can also explore the example folder for more advanced use cases and samples.

### How to Use in VS Code:

1. Open your project in VS Code.
2. Locate your `README.md` file and open it.
3. Paste the above content into the file.
4. Save the file (`Ctrl + S` or `Cmd + S`).