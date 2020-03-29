import 'package:code_generator_metadata/code_generator_metadata.dart';
import 'package:flutter/widgets.dart';

@RouteAnnotation("/test_widget", {"test": 1})
class TestWidget extends StatefulWidget {
  @override
  _TestWidgetState createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
