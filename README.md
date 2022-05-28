# deployの方法

pushする。するとdeployされる。そのため、push = deploy。

# 新規記事の作成方法

```sh
make posts.new TITLE=nice_content
```
TITLEの部分はよしなに書き換えてください。

# localでの起動方法

```sh
hugo server -D
```

`-D` オプションは下書き状態の記事も表示するオプションです。
詳細は[documentのオプション](https://gohugo.io/commands/hugo_server/)を参照ください。

## もし直前の起動コマンドでも白いページが表示されていたら

以下のコマンドを打つと解決する。
```sh
git submodule update --init --recursive
```

テーマがlocalにcheckoutされていなくて、白くなっている可能性が高い。
この原因の場合、以下のようなmessegeが表示されているはず。
もし、以下のようなメッセージが表示されている場合は、 ↑のコマンドを実行しよう。
```console
Start building sites …
hugo v0.100.0-DEV-805b21555e283c28a669943a36af6d6d699e9198+extended linux/amd64 BuildDate=2022-05-25T19:21:28Z
WARN 2022/05/26 15:49:57 found no layout file for "HTML" for kind "page": You should create a template file which matches Hugo Layouts Lookup Rules for this combination.
WARN 2022/05/26 15:49:57 found no layout file for "HTML" for kind "page": You should create a template file which matches Hugo Layouts Lookup Rules for this combination.
```

