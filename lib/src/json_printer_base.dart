// json_printer_base.dart

/// Abstract class defining the interface for printing JSON.
abstract class IJsonPrinter {
  void printJson(Map<String, dynamic> json);
}

/// Abstract class defining the interface for formatting JSON.
abstract class IJsonFormatter {
  String format(Map<String, dynamic> json, {int indent = 0});
}
