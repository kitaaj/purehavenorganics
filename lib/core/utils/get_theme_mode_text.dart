import 'package:flutter/material.dart';

String getThemeModeText(ThemeMode mode) {
  switch (mode) {
    case ThemeMode.system:
      return 'System Default';
    case ThemeMode.light:
      return 'Light';
    case ThemeMode.dark:
      return 'Dark';
  }
}