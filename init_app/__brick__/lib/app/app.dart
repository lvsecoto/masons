import 'package:common/common.dart';
import 'theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../router.dart';

final GlobalKey _appKey = GlobalKey();

BuildContext get appContext => _appKey.currentState!.context;

class App extends StatelessWidget {
  /// App入口
  /// 设置主题等等
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return CommonAppWrapper(
      child: ThemeWidget(
        builder: (context, themeData, child) => MaterialApp.router(
          key: _appKey,
          routerConfig: _appRouter.config(),
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale.fromSubtags(
              languageCode: 'zh',
              scriptCode: 'Hans',
            ),
          ],
          theme: themeData.copyWith(),
          builder: (context, child) => child!,
        ),
      ),
    );
  }
}
