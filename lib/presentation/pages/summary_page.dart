import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palm_sample/application/usecase/summary_usecase.dart';
import 'package:palm_sample/presentation/presentation_mixin.dart';

import '../../application/state/summary_text_provider.dart';

/// 要約生成ページ
class SummaryPage extends ConsumerWidget with PresentationMixin {
  SummaryPage({Key? key}) : super(key: key);

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Summarize Text with PaLM API'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              Card(
                elevation: 8.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: TextField(
                      controller: _textEditingController,
                      decoration: const InputDecoration(
                        labelText: 'Enter your text',
                        border: InputBorder.none,
                      ),
                      maxLines: 5,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: () {
                  execute(
                    context,
                    action: () => ref
                        .read(summaryUsecaseProvider)
                        .summarizeText(text: _textEditingController.text),
                    successMessage: 'Summary is complete!!',
                  );
                },
                style: ButtonStyle(elevation: MaterialStateProperty.all(8.0)),
                child: const Text('Summarize'),
              ),
              const SizedBox(height: 48.0),
              Text(
                'Summary  : ${ref.watch(summaryTextStateProvider)}',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
