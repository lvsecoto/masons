import 'package:flutter/material.dart';

import 'widget/content_widget.dart';

class {{name.pascalCase()}}Screen extends StatelessWidget {
  const {{name.pascalCase()}}Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContentWidget();
  }
}
