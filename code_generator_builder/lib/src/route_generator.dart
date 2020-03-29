import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:code_generator_builder/src/route_tool.dart';
import 'package:code_generator_metadata/code_generator_metadata.dart';
import 'package:source_gen/source_gen.dart';

class RouteGenerator extends GeneratorForAnnotation<RouteAnnotation> {
  @override
  generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    //Through annotation ,get @RouteAnnotation class path
    String nameValue = annotation.peek("name").stringValue;
    Map param = annotation.peek("param")?.mapValue;
    print("路径:${buildStep.inputId.path}");
    String importPath = "${buildStep.inputId.package}" +
        buildStep.inputId.path.replaceFirst("lib", '');
    routeTool.addData(nameValue, param, element.displayName, importPath);
    //Collect info,don't generate file
    return null;
  }
}
