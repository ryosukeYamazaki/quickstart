---
title: "Aliasを使って Git の頻出コマンドを効率化する"
date: 2020-12-14T12:49:03+09:00
draft: false
---

# これ何？

gitコマンドは省略できる。

例えば、
```sh
git status
```

を

```sh
g st
```
のように。

開発していると git コマンドは大量につかう。
そのため、省略することで作業を効率化したい。

今回、使用する alias の機能は2種類。
- bash の alias
- git の alias

# git のAliasコマンド

git の aliasは `.gitconfig` に追記することで設定できる。

```sh
git status
```

を
```sh
git st
```

のようにしたい場合は、下記の箇所に追記する。

```
[credential]
	helper = store
[user]
	name = ryosukeYamazaki
	email = ryamazaki@c-fo.com
[filter "lfs"]
	clean = git-lfs clean %f
	smudge = git-lfs smudge %f
	required = true
[url "ssh://git@github.com"]
     insteadOf = git://git@github.com
[url "ssh://git@github.com"]
  insteadOf = https://github.com
[core]
	editor = emacs -nw
	excludesfile = ~/.gitignore
[alias] # 追記する箇所はここ。 # 追記する箇所はここ。
	st = status # 追記する箇所はここ。
```


# bash のalias

bash の aliasは `.bashrc` or `.bash_profile` に追記することで設定できる。

```sh
git status
```

を
```sh
g status
```

下記の行を`.bashrc` or `.bash_profile` に追記する。

```
alias g='git'
```

最後にshellの再起動しておけば反映される。
```sh
exec $SHELL -l
```


# git, bashの aliasを組み合わせ

両者を組み合わせると

```sh
git status
```

を

```sh
g st
```

のように使うことができる。
便利。


