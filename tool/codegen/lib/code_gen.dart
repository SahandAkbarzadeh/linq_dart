library code_gen.dart;

import 'package:build/build.dart';

import 'src/generator.dart';

Builder codeGenFactory(BuilderOptions options) =>
    codeGenFactoryBuilder(header: options.config['header'] as String);
