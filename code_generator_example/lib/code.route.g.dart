import 'package:flutter/widgets.dart';
import 'package:code_generator_example/test_widget.dart';
import 'package:code_generator_example/path1/test2_widget.dart';

const String ROUTE_NAME_TESTWIDGET = '/test_widget';
const String ROUTE_NAME_TEST2WIDGET = '/test2_widget';

var routes = <String, WidgetBuilder>{
  ROUTE_NAME_TESTWIDGET: (BuildContext context) => TestWidget(),
  ROUTE_NAME_TEST2WIDGET: (BuildContext context) => Test2Widget(),
};
