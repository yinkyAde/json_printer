// json_printer_implementation.dart

import 'json_printer_base.dart';

/// Concrete implementation of the JSON printer.
class JsonPrinter implements IJsonPrinter {
  final IJsonFormatter formatter;

  // Constructor to inject the formatter dependency
  JsonPrinter(this.formatter);

  @override
  void printJson(Map<String, dynamic> json) {
    String formattedJson = formatter.format(json); // Format the JSON
    print("==========================================\n");
    print(formattedJson); // Print the formatted JSON
    print("==========================================");
  }
}
