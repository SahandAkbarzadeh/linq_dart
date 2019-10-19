import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

String capitalize(String s) => (s != null && s.length > 1)
    ? s[0].toUpperCase() + s.substring(1)
    : s != null ? s.toUpperCase() : null;

class CodeGen extends Generator {
  @override
  FutureOr<String> generate(LibraryReader library, BuildStep buildStep) {
    var extensionName = "";
    var methods = <String>[];
    for (var element in library.allElements) {
      extensionName = element.enclosingElement.location
          .toString()
          .split('/')
          .last
          .replaceAll('.dart', '');
      extensionName = "${capitalize(extensionName)}Extensions";
      if (element is FunctionElement) {
        // extract source type
        var _sourceType = element.typeParameters.first;
        // function name
        var _funcName = element.name;
        // return type
        var _returnTtype = element.returnType;
        // positional pars without source
        var _posPars =
            element.parameters.where((x) => x.isPositional).skip(1).toList();

        var _posParsGen = _posPars.map((x) => "$x").join(",");

        _posParsGen = _posParsGen == "" ? "" : "$_posParsGen,";

        // optional args
        var _optPars =
            element.parameters.where((x) => x.isOptionalNamed).toList();

        var _optParsGen = _optPars
            .map((x) =>
                x.toString().substring(1).substring(0, x.toString().length - 2))
            .join(",");

        // type pars without source
        var _typePars = element.typeParameters.skip(1);

        var fillNamesParams =
            _optPars.map((x) => "${x.name}: ${x.name}").join(",");

        fillNamesParams = fillNamesParams == "" ? "" : "$fillNamesParams,";

        var typeParGen = _typePars.map((x) => x.name).join(",");
        typeParGen = typeParGen == "" ? "" : "<$typeParGen>";

        var optParsGen = "{$_optParsGen,}";
        optParsGen = optParsGen == "{,}" ? "" : optParsGen;

        var posParsGen = "${_posPars.map((x) => x.name).join(",")},";
        posParsGen = posParsGen == "," ? "" : posParsGen;

        var method = """

$_returnTtype $_funcName$typeParGen($_posParsGen $optParsGen)
  => f.$_funcName(this, $posParsGen $fillNamesParams);

        """;
        method = method.replaceAll(_sourceType.name, "E");

        methods.add(method);
      }
    }

    var extension_ = """


import 'package:linq/linq.dart' as f;

extension $extensionName<E> on Iterable<E> {
  ${methods.join("\n")}
}

    """;
    return extension_;
  }
}

Builder codeGenFactoryBuilder({String header}) => new PartBuilder(
      [new CodeGen()],
      ".extension.dart",
      header: header,
    );
