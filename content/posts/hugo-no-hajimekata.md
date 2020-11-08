---
title: "hugoの始め方"
date: 2020-11-08T19:45:36+09:00
draft: false
---

# installする

linuxの場合はsnapをつかってinstallする。  

```sh
sudo snap install hugo --channel=extended
```

aptのinstallでは最新バージョンが落ちてこないので注意。

# テーマをダウンロードする

https://github.com/Mitrichius/hugo-theme-anubis
私はこのテーマをダウンロードした。

# yamlファイルをtomlに変換する

上のテーマはyamlで設定ファイルの例が書かれていた。  
そのままではquickstartのtomlと競合する。  
そのため、下記のサイトを利用して、yamlをtomlに変換する  

https://www.convertsimple.com/convert-yaml-to-toml/

# 開発サーバを起動する

## localで書いている場合

```sh
hugo server -D
```

## リモートホストで起動している場合

リモートホスト起動している場合、名前解決やcssのダウンロードがうまく行かない。  
そのため、下記のコマンドで立ち上げる。

```sh
hugo server -v -D --bind 0.0.0.0 -p 8888 --baseUrl=hogehoge.net
```


# きれいに立ち上がる

お疲れさまでした。  
めちゃ簡単に立ち上がった。
