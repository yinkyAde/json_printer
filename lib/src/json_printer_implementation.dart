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
    String borderedJson = _addBoxAroundText(formattedJson); // Add box around JSON
    print(borderedJson); // Print the boxed and formatted JSON
  }

  String _addBoxAroundText(String text) {
    // Define the colors (change these values to suit your preferences)
    const String borderColor = '\x1B[36m'; // Cyan
    const String textColor = '\x1B[33m'; // Yellow
    const String resetColor = '\x1B[0m'; // Reset to default

    // Split the text into lines
    List<String> lines = text.split('\n');

    // Find the maximum line length
    int maxLength = lines.fold(0, (max, line) => line.length > max ? line.length : max);

    // Create the top border
    StringBuffer buffer = StringBuffer();
    buffer.writeln('$borderColor+${'-' * (maxLength + 2)}+$resetColor');

    // Add each line with side borders
    for (String line in lines) {
      buffer.writeln('$borderColor| $textColor$line${' ' * (maxLength - line.length)} $borderColor|$resetColor');
    }

    // Create the bottom border
    buffer.writeln('$borderColor+${'-' * (maxLength + 2)}+$resetColor');

    return buffer.toString();
  }
}
