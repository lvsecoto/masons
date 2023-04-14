import 'package:mason/mason.dart';
import 'package:process_run/shell.dart' as shell;

Future<void> run(HookContext context) async {
  final name = context.vars['name'];
  context.logger.info('add to git');
  runCommand(context, 'git add $name');
  runCommand(context, 'flutter pub run build_runner build');
}

/// 执行shell命令，不会抛出异常，但错误会打印出来
Future<void> runCommand(HookContext context, String cmd) async {
  await shell.run(cmd, throwOnError: false).then((value) {
    for (var it in value) {
      it.errLines.forEach(context.logger.err);
    }
  });
}
