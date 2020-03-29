class RouteTool {
  final names = [];
  final params = [];
  final widgetNames = [];
  final importPaths = [];

  RouteTool._();

  addData(String name, Map param, String widgetName, String importPath) {
    names.add(name);
    params.add(param);
    widgetNames.add(widgetName);
    importPaths.add(importPath);
  }
}

final routeTool = RouteTool._();
