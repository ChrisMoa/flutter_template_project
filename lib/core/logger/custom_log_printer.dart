import 'package:logger/logger.dart';
import 'package:template_project/core/custom_extensions/custom_extensions.dart';

class CustomLogPrinter extends LogPrinter {
  final splitChars = ';';

  @override
  List<String> log(LogEvent event) {
    return [
      event.time.toFineTimeString() + splitChars + event.level.name + splitChars + event.message,
    ];
  }
}
