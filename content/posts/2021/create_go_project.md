---
title: "Goプロジェクトの作り方"
description: "Goプロジェクトの作り方"
date: 2021-12-05T12:49:18+09:00
draft: false
---

# これ何？
Go の新規プロジェクト作成方法

# go mod init

```go
> go mod init github.com/ryosukeYamazaki/facebook_go_sdk_sample
```

こうすると `go.mod` が生成されて、moduleとして認識される。

# git init

```sh
git init
```

# moduleの追加

module 以下で go get を実行する
```sh
go get https://github.com/huandu/facebook
```

こうすることで `go.mod` にmoduleが追加される。

# hello world

```go
import "fmt"

func main() {
  fmt.Printf("Hello world\n")
}
```

# 参考文献

https://zenn.dev/nobonobo/articles/4fb018a24f9ee9
