import 'package:build/build.dart';
import 'package:code_generator_builder/src/route_builder.dart';
import 'package:code_generator_builder/src/route_generator.dart';
import 'package:source_gen/source_gen.dart';

Builder toolBuilder(BuilderOptions options) => LibraryBuilder(RouteGenerator());

Builder routeBuilder(BuilderOptions options) => RouteBuilder();
