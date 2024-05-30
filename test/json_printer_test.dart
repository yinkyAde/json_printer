// test/json_printer_test.dart

import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:json_printer/json_printer.dart';

void main() {
  test('JsonPrinter prints JSON sequentially', () {
    final json = {
      "hospitalNumber": "123456",
      "name": "John Doe",
      "age": 30,
      "address": {
        "street": "123 Main St",
        "city": "Anytown",
        "state": "Anystate",
      },
      "phoneNumbers": ["555-1234", "555-5678"],
    };

    IJsonFormatter formatter = JsonFormatter();  // Create an instance of JsonFormatter
    IJsonPrinter printer = JsonPrinter(formatter);  // Create an instance of JsonPrinter with the formatter

    // Capture the printed output
    final output = StringBuffer();

    // Override the print function to capture the output
    final spec = ZoneSpecification(print: (self, parent, zone, line) {
      output.writeln(line);
    });

    // Run the test within the overridden print zone
    Zone.current.fork(specification: spec).run(() {
      printer.printJson(json);
    });

    // Validate the output
    expect(output.toString(), contains('hospitalNumber: 123456'));
    expect(output.toString(), contains('name: John Doe'));
    expect(output.toString(), contains('age: 30'));
    expect(output.toString(), contains('address:'));
    expect(output.toString(), contains('  street: 123 Main St'));
    expect(output.toString(), contains('  city: Anytown'));
    expect(output.toString(), contains('  state: Anystate'));
    expect(output.toString(), contains('phoneNumbers: ['));
    expect(output.toString(), contains('  555-1234'));
    expect(output.toString(), contains('  555-5678'));
  });
}
