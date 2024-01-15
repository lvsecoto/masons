# create_page

mason 生成一个页面

## 用法

安装:

```shell
mason add create_page -g --git-url 'git@github.com:lvsecoto/masons.git' --git-path 'create_page'
```

然后运行：

```shell
mason make create_page --name "test me"
```

就会生成：
* test_me/provider/provider.dart
* test_me/widget/widget.dart
* test_me/test_me.dart

就会生成一个页面，其中包括了框架

- river_pod
- auto_router

生成页面后，还会添加到git，同时执行build_runner