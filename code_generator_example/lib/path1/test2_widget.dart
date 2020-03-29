import 'package:code_generator_metadata/code_generator_metadata.dart';
import 'package:flutter/widgets.dart';

@RouteAnnotation("/test2_widget", {"test": 2})
class Test2Widget extends StatefulWidget {
  @override
  _Test2WidgetState createState() => _Test2WidgetState();
}

class _Test2WidgetState extends State<Test2Widget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
