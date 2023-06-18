import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palm_sample/presentation/theme.dart';

import '../application/state/overlay_loading_provider.dart';
import 'components/loading.dart';
import 'pages/summary_page.dart';

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Summarize Text with PaLM API',
      debugShowCheckedModeBanner: false,
      theme: ref.read(themeProvider),
      home: SummaryPage(),
      builder: (context, child) {
        return Consumer(
          builder: (context, ref, _) {
            final isLoading = ref.watch(overlayLoadingProvider);
            return Stack(
              children: [
                child!,
                // ローディング表示
                if (isLoading) const OverlayLoading()
              ],
            );
          },
        );
      },
    );
  }
}
