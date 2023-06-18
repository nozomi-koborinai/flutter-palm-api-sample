import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palm_sample/presentation/app.dart';

void main() {
  runApp(
    const ProviderScope(
      overrides: [],
      child: App(),
    ),
  );
}
