import 'dart:io';

import 'package:mason/mason.dart';
import 'package:process_run/cmd_run.dart' as p;

Future<void> run(HookContext context) async {
  final tempDir = await Directory.current.createTemp('script');
  final pubAddSh = File(tempDir.path + '/' + 'pub_add.sh');
  await p.run("alias flutter='flutter --no-version-check'");

  pubAddSh.writeAsStringSync('flutter pub add ${[
    'flutter_localizations:{"sdk":"flutter"}',
    'intl',
    'flutter_riverpod',
    'hooks_riverpod',
    'riverpod_annotation',
    'flutter_hooks',
    'freezed_annotation',
    'rxdart',
    'auto_route',
    'hive',
    'hive_flutter',
    'dio',
    'dartx',
    'bitsdojo_window',
    'dev:freezed',
    'dev:riverpod_generator',
    'dev:riverpod_lint',
    'dev:auto_route_generator',
    'dev:custom_lint',
    'dev:build_runner',
  ].map((it) => "'$it'").join(' ')}');

  await p.run('chmod u+x ${pubAddSh.path}');
  await p.run('${pubAddSh.path}');

  await p.run('flutter pub get');
  await p.run('flutter pub run build_runner build');
  final gitignore = File('.gitignore');
  gitignore.writeAsStringSync(
    '\n'
    '\n# 生成文件"'
    '\n*.g.dart"'
    '\n*.gr.dart"'
    '\n*.freezed.dart"'
    '\n',
    mode: FileMode.writeOnlyAppend,
  );

  final macosWindowSwift = File('macos/Runner/MainFlutterWindow.swift');
  macosWindowSwift.writeAsStringSync(
    macosWindowSwift
        .readAsStringSync()
        .replaceFirst(RegExp('''import FlutterMacOS

class MainFlutterWindow: NSWindow {''', multiLine: true), '''import FlutterMacOS
import bitsdojo_window_macos // Add this line

class MainFlutterWindow: BitsdojoWindow {

  override func bitsdojo_window_configure() -> UInt {
    return BDW_CUSTOM_FRAME | BDW_HIDE_ON_STARTUP
  }
'''),
    mode: FileMode.write,
  );

  tempDir.deleteSync(recursive: true);
  await p.run('git init');
  await p.run('git add -A');
}
