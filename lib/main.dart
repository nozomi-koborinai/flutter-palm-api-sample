import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palm_sample/infrastructure/firebase/text/mock_text_repository.dart';
import 'package:palm_sample/presentation/app.dart';

import 'domain/text/text_repository.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    ProviderScope(
      overrides: [
        summaryRepositoryProvider.overrideWithValue(MockTextRepository()),
      ],
      child: const App(),
    ),
  );
}
