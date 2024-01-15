part of '{{name.camelCase()}}.dart';

@freezed
class {{name.pascalCase()}} with _${{name.pascalCase()}} {
  const factory {{name.pascalCase()}}({
    required String name,
  }) = _{{name.pascalCase()}};
}

