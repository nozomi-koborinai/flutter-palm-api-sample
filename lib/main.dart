import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palm_sample/infrastructure/firebase/text/text_repository_impl.dart';
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
        // 各プロバイダーに具象を注入
        // 投稿リポジトリ
        textRepositoryProvider.overrideWith(
          (ref) {
            final repository = TextRepositoryImpl(
              collectionRef: ref.watch(textDocumentsCollectionRefProvider),
            );
            return repository;
          },
        ),
      ],
      child: const App(),
    ),
  );
}
