更新履歴
========

0.3.0
-----

### 機能の追加

### 機能の変更

### 機能の削除

### 問題の修正

0.2.0
-----
2019年12月5日に公開。

### 機能の追加
- Ruby 2.7で追加された組み込みライブラリを日本語化するために、組み込み
  ライブラリを可視化するツールを追加した。
  [#4](https://github.com/y10k/ruby-japanize/issues/4)
- Ruby 2.6.5でまだ日本語化していない操作(メソッド)を日本語化した。
  [#6](https://github.com/y10k/ruby-japanize/issues/6)

### 機能の変更
- `物`(`Object`)の操作(メソッド)の日本語の別名を`核`(`Kernel`)に移動した。
  [#1](https://github.com/y10k/ruby-japanize/issues/1)

### 機能の削除
無し。

### 問題の修正
- `物の土台`(`BasicObject`)でシステムのスタックが超過(`SystemStackError`)する問題を修正した。
  [#2](https://github.com/y10k/ruby-japanize/issues/2)
- Ruby 2.7.0-preview2で警告が出る問題を修正した。
  [#3](https://github.com/y10k/ruby-japanize/issues/3)
- Ruby 2.6の引数の移譲で`連想配列`(`Hash`)が名前付き引数と混同される問題を修正した。
  [#5](https://github.com/y10k/ruby-japanize/issues/5)

0.1.0
-----
2019年10月14日に公開。
