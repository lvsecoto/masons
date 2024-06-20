import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'model.dart';
part 'provider.dart';

part '{{name.snakeCase()}}.g.dart';
part '{{name.snakeCase()}}.freezed.dart';

@riverpod
{{name.pascalCase()}}Manager {{name.camelCase()}}Manager({{name.pascalCase()}}ManagerRef ref) {
  return {{name.pascalCase()}}Manager(ref);
}

class {{name.pascalCase()}}Manager {
  final AutoDisposeRef<{{name.pascalCase()}}Manager> _ref;

  {{name.pascalCase()}}Manager(this._ref);

}