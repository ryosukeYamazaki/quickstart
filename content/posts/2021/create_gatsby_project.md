---
title: "Gatsby プロジェクトの作り方"
date: 2021-12-05T17:30:29+09:00
draft: true
---

# これ何？

Gatsbyプロジェクトの作り方
作るところからdeployするところまで

# 作り方

## 事前準備

```sh
npm install -g gatsby-cli
```

## プロジェクト新規作成

```
gatsby new misokatsu-web-portal
```

## typescript対応

`gatsby-config.js` に以下を追加する

```js
    {
      resolve: `gatsby-plugin-typescript`,
      options: {
        isTSX: true, // defaults to false
        jsxPragma: `jsx`, // defaults to "React"
        allExtensions: true, // defaults to false
      },
    },
```

## markdownをparseできるようにする

`gatsby-config.js` に以下を追加する

```js
    `gatsby-transformer-remark`,
    {
      resolve: `gatsby-source-filesystem`,
      options: {
        name: `markdown`,
        path: `${__dirname}/src/markdown`,
      },
    },
```

# deployする方法

TBD

# 参考

https://qiita.com/jintz/items/227fad3c2092700361fb
