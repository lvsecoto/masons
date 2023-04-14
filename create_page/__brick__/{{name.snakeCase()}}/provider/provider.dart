import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
String {{name.camelCase()}}({{name.pascalCase()}}Ref ref) {
  return '{{name.camelCase()}}';
}
