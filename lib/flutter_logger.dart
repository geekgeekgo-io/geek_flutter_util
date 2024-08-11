// File: flutter_logger/lib/flutter_logger.dart

import 'package:flutter/foundation.dart';

class Logger {
  static void log(String message, {String? tag}) {
    if (kDebugMode) {
      final timestamp = DateTime.now().toIso8601String();
      final logMessage = tag != null ? '[$tag] $message' : message;
      print('$timestamp: $logMessage');
    }
  }

  static void error(String message, {String? tag}) {
    log('ERROR: $message', tag: tag);
  }

  static void warn(String message, {String? tag}) {
    log('WARNING: $message', tag: tag);
  }

  static void info(String message, {String? tag}) {
    log('INFO: $message', tag: tag);
  }
}