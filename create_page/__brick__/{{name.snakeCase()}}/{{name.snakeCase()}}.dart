import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import 'widget/content_widget.dart';

@RoutePage()
class {{name.pascalCase()}}PageWidget extends StatelessWidget {
  const {{name.pascalCase()}}PageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContentWidget();
  }
}