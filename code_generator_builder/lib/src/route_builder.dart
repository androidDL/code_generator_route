import 'dart:async';

import 'package:build/build.dart';
import 'package:code_generator_builder/src/route_tool.dart';
import 'package:dart_style/dart_style.dart';

class RouteBuilder extends Builder {
  @override
  FutureOr<void> build(BuildStep buildStep) async {
    var imports = [];
    var names = [];
    var widgetRoutes = [];
    for (int i = 0; i < routeTool.names.length; i++) {
      String routeName =
          "ROUTE_NAME_${routeTool.widgetNames[i].toString().toUpperCase()}";
      imports.add("import 'package:${routeTool.importPaths[i]}';");
      names
          .add("const String $routeName = '${routeTool.names[i].toString()}';");
      widgetRoutes.add(
          "$routeName : (BuildContext context) =>${routeTool.widgetNames[i]}(),");
    }
    var outputAssetId =
        AssetId(buildStep.inputId.package, "lib/code.route.g.dart");
    await buildStep.writeAsString(outputAssetId, DartFormatter().format('''
    import 'package:flutter/widgets.dart';
    ${imports.join("\n")}
    
    ${names.join("\n")}
    
    var routes = <String, WidgetBuilder>{
    
    ${widgetRoutes.join("\n")}
    
    };
    ''').toString());
  }

  @override
  Map<String, List<String>> get buildExtensions => {
        r"$lib$": ["code.route.g.dart"]
      };
}
