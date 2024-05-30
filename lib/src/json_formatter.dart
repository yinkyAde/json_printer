// json_formatter.dart

import 'json_printer_base.dart';

/// Concrete implementation of the JSON formatter.
class JsonFormatter implements IJsonFormatter {
  @override
  String format(Map<String, dynamic> json, {int indent = 0}) {
    final buffer = StringBuffer();  // Buffer to accumulate the formatted JSON string
    _formatJson(json, buffer, indent);  // Helper method to recursively format JSON
    return buffer.toString();  // Return the accumulated string
  }

  void _formatJson(Map<String, dynamic> json, StringBuffer buffer, int indent) {
    json.forEach((key, value) {
      final indentation = ' ' * indent;  // Create indentation based on the level
      if (value is Map<String, dynamic>) {
        buffer.writeln('$indentation$key:');  // Print the key
        _formatJson(value, buffer, indent + 2);  // Recursively format nested JSON
      } else if (value is List) {
        buffer.writeln('$indentation$key: [');  // Print the key for list
        for (var item in value) {
          if (item is Map<String, dynamic>) {
            _formatJson(item, buffer, indent + 2);  // Recursively format nested JSON
          } else {
            buffer.writeln('${indentation}  $item');  // Print list item
          }
        }
        buffer.writeln('$indentation]');  // Close the list
      } else {
        buffer.writeln('$indentation$key: $value');  // Print the key-value pair
      }
    });
  }
}
