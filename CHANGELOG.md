更新履歴
========

0.3.0
-----
2020年1月19日に公開。

### 機能の追加
- Ruby 2.7で追加された組み込みライブラリを日本語化した。
  [#4](https://github.com/y10k/ruby-japanize/issues/4),
  [#17](https://github.com/y10k/ruby-japanize/issues/17)
- Ruby 2.7.0で動くようにした。
  [#8](https://github.com/y10k/ruby-japanize/issues/8)
- 日本語の操作(メソッド)を定義する逆引用符(`` ` ``)記法を追加した。
  [#9](https://github.com/y10k/ruby-japanize/issues/9)
- 日本語化していない定数を日本語化した。
  [#14](https://github.com/y10k/ruby-japanize/issues/14)
- 更新履歴を追加した。
  [#16](https://github.com/y10k/ruby-japanize/issues/16)
- 物(オブジェクト)の初期化の説明を添付文書に追加した。
  [#18](https://github.com/y10k/ruby-japanize/issues/18)

### 機能の変更
- 数学関数の日本語名を変更した。
  [#7](https://github.com/y10k/ruby-japanize/issues/7)
- `source_location`の日本語名を変更した。
  [#10](https://github.com/y10k/ruby-japanize/issues/10)
- 環境に依存する定数は使用可能なときだけ日本語名を定義するように変更した。
  [#11](https://github.com/y10k/ruby-japanize/issues/11)
- システムコールのclock_gettime(2)関連の関数と定数の日本語名を変更した。
  [#12](https://github.com/y10k/ruby-japanize/issues/12)
- システムコールのgetrlimit(2)関連の定数の日本語名を変更した。
  [#13](https://github.com/y10k/ruby-japanize/issues/13)
- `Process::RLIMIT_NOFILE`の日本語名を変更した。
  [#15](https://github.com/y10k/ruby-japanize/issues/15)

### 機能の削除
無し。

### 問題の修正
無し。

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
