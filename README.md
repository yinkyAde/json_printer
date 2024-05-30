
# json_printer

A Flutter package to print JSON objects sequentially, designed with SOLID principles in mind. This package is useful for developers who need a structured and readable way to output JSON data in their Flutter applications.

# Motivation
Working with APIs in Dart often involves parsing JSON responses and inspecting data structures. Manually logging JSON data in the console can be cumbersome, requiring developers to sift through lengthy outputs. JSON Printer simplifies this process by neatly formatting JSON objects, enhancing readability and efficiency.

## Features

- Print JSON objects with nested structures in a readable format.
- Handles nested objects and arrays gracefully.
- Follows SOLID principles for maintainability and extensibility.

## Getting Started

To start using the `json_printer` package, add it to your `pubspec.yaml`:

```yaml
dependencies:
  json_printer: ^x.x.x # Replace x.x.x with the latest version
```

Then run `flutter pub get` to install the package.

## Usage

Here is a simple example of how to use the `json_printer` package:

```dart
import 'package:json_printer/json_printer.dart';

void main() {
  Map<String, dynamic> patientDetailsResponse = {
    "hospitalNumber": "123456",
    "name": "John Doe",
    "age": 30,
    "address": {
      "street": "123 Main St",
      "city": "Anytown",
      "state": "Anystate",
    },
    "phoneNumbers": ["234-1234", "234-5678"],
  };

  IJsonFormatter formatter = JsonFormatter();  // Create an instance of JsonFormatter
  IJsonPrinter printer = JsonPrinter(formatter);  // Create an instance of JsonPrinter with the formatter

  printer.printJson(patientDetailsResponse);  // Print the JSON
}
```

## Additional Information

For more information about this package, including how to contribute, file issues, or get in touch with the author, please visit the [GitHub repository](https://github.com/yinkyAde/json_printer).

### Contributing

Contributions are welcome! If you find a bug or have a feature request, please file an issue. If you'd like to contribute code, please fork the repository and submit a pull request.

### Issues

Please file any issues, bugs, or feature requests in the [GitHub issues](https://github.com/yinkyAde/json_printer).
