import 'package:flutter/material.dart';

/// Extension for SizedBox usage
/// Example : Use '20.ph' instead of SizedBox(height:20)
extension SizedBoxExtension on num {
  SizedBox get ph => SizedBox(
        height: toDouble(),
      );
  SizedBox get pw => SizedBox(
        width: toDouble(),
      );
}
