import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palm_sample/domain/summary/summary_repository.dart';
import 'package:palm_sample/infrastructure/mock_summary_repository.dart';
import 'package:palm_sample/presentation/app.dart';

import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    ProviderScope(
      overrides: [
        summaryRepositoryProvider.overrideWithValue(MockSummaryRepository()),
      ],
      child: const App(),
    ),
  );
}
