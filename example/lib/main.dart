import 'package:json_printer/json_printer.dart';

void main() {
  Map<String, dynamic> patientResponse = {
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

  printer.printJson(patientResponse);  // Print the JSON
}
