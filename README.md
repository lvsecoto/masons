# 自动代码生成模版

为了方便开发，利用[mason](https://pub.dev/packages/mason_cli)帮助生成代码

## 用法

安装mason

```shell
dart pub global activate mason_cli
```

安装brick作为插件，这里用[create_page](/create_page)作为例子，全局安装。项目级别的安装参考官方文档

```shell
mason add create_page -g --git-url 'git@codeup.aliyun.com:6240585956f85235f7dd77d1/app/mason_brick.git' --git-path 'create_page'
```

然后运行：

```shell
mason make create_page --name "test me"
```

就会生成：
* test_me/provider/provider.dart
* test_me/widget/widget.dart
* test_me/test_me.dart
