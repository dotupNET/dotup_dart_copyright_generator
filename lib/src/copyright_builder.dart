import 'dart:convert';
import 'dart:io';

import 'package:build/build.dart';

class CopyrightBuilder implements Builder {
  @override
  final buildExtensions = const {
    '.dart': ['.copyright.dart']
  };

  CopyrightBuilder(this.options);
  final BuilderOptions options;

  @override
  Future<void> build(BuildStep buildStep) async {
    if (options.config['enabled'] != true) {
      return;
    }

    var force = options.config['force'];

    const headerStart = '// Powered by https://dotup.de';
    // const headerEnd = '// copyright_generator - DO NOT CHANGE LINES ABOVE!';

    var inputId = buildStep.inputId;

    final stream = File(buildStep.inputId.path)
        .openRead()
        .map(utf8.decode)
        .transform<String>(LineSplitter())
        .map<String?>((event) => event)
        .asBroadcastStream();

    final hasHeader = await stream.first == headerStart;

    final headerEndContent = await stream.firstWhere(
      (e) => e!.isEmpty,
      orElse: () => null,
    );

    String? sourceCode;

    if (hasHeader && headerEndContent != null) {
      if (force == true) {
        sourceCode = await stream.join('\n');
      } else {
        sourceCode = '';
      }
    } else {
      sourceCode = await buildStep.readAsString(inputId);
    }

    try {
      if (sourceCode.isNotEmpty) {
        var add = options.config['copyright'] as String? ?? '';
        var text = options.config['text'] as List<String>? ?? [];

        if (add.isNotEmpty) {
          add = ', $add';
        }
        if (text.isNotEmpty) {
          final addText = text.join('\n');
          add = '$add\n$addText';
        }
        final year = DateTime.now().year;
        add = '// Copyright (c) $year$add';

        final newContent = '$headerStart\n$add\n\n$sourceCode';
        await File(buildStep.inputId.path).writeAsString(newContent);
      }
    } catch (e) {
      print(e);
    }
  }
}
