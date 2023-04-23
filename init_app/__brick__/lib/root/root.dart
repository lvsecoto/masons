import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import 'widget/content_widget.dart';

@RoutePage()
class RootPageWidget extends StatelessWidget {
  const RootPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContentWidget();
  }
}