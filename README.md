ruby-japanize
=============

日本語の別名や構文を定義してRubyを日本語で書けるようにする。

導入方法
--------

`Gemfile`に次の行を追加します。

```ruby
gem 'ruby-japanize'
```

そして次のコマンドを実行します。

    $ bundle

または次のようにします。

    $ gem install ruby-japanize

なぜRubyを日本語化しようと思ったのかについて
--------------------------------------------

Rubyを日本語化しようと思ったきっかけは二つあります。一つはRubyの識別子
(変数名やメソッド名)にUTF-8が使えるため、その気になれば日本語だけで
Rubyのスクリプトを書けるのではないかと思いついたことです。唯一、クラス
名(≒定数名)はアルファベットの大文字で始まる必要があるため単純に日本語
化できないのですが、試しにプロトタイプを作ってみたところちょっとした制
限と工夫でなんとかなりそうだという感触を得ました。

もう一つのきっかけは、日本語で実用的なプログラミングを表現し切ることは、
はたして可能なのだろうかと疑問に思ったことです。現在、Rubyを含む一般に
広く普及している実用的なプログラミング言語は英語がベースになっていると
言っていいと思います。日本語ベースのプログラミング言語も無くはないよう
ですが、実用言語として広く普及しているとは言いがたい状況でしょう。Ruby
を実用言語たらしめている要素は大きく二つあると思っていて、一つは見ため
に分かりやすい構文で、もう一つは豊富なクラスライブラリ(≒語彙)です。実
用的なプログラミングのためには特に後者が重要だと個人的には思っていて、
Rubyは英語ベースなのでRubyが持つ語彙もすべて英語で表現されているわけで、
日本語で実用的なプログラミングをするためにはこの語彙をすべて日本語で表
現し切る必要があるのですが、はたしてそんなことは本当に可能なのでしょう
か？

この疑問を解くためには、実際に作ってみるのが手っ取り早いということで、
作ってみたのがこのgemです。

日本語化の基本方針
------------------

- スクリプトエンコーディングはUTF-8で統一する。
- 外付けのライブラリにまで手を出すときりがないので、日本語化の範囲は組
  み込みライブラリまでにする。
- `Test::Unit`はテストのために使うので例外的に日本語化の対象とする。
- ファイル名は日本語化しない。(本当は日本語化したかったけど、環境によっ
  てファイル名の文字符号化方式が異なるとバイト表現が変わるため、ファイ
  ル名の日本語化はあきらめました)
- 演算子や記号などの英語でない名前は日本語化しない。

日本語の命名規則
----------------

1. カタカナ語はできるだけ使わない。どうしても日本語に該当する概念や言
   葉が無いときだけカタカナを使う。
2. よく使うメソッドは短く簡潔な名前にする。
3. 使用頻度が低いメソッドや注意深く使う必要があるメソッドは冗長で分か
   りやすい名前にする。
4. 述語メソッド(`〜?`)の名前は原則として`〜か?`で終わらせる。
5. 述語メソッドにおける「が」と「は」の使い分け
     - 述語メソッドがレシーバの状態を表すときは`〜が〜か?`とする。
     - 述語メソッドが引数の状態を表すときは`〜は〜か?`とする。

日本語で書いたRubyスクリプトの例
--------------------------------

<https://www.ruby-lang.org/ja/about/>に掲載されているRubyスクリプトを
日本語で書いてみた例を以下に掲載しています。またRubyのソースコードに付
属するサンプルを日本語で書き直した例が
[sample](https://github.com/y10k/ruby-japanize/tree/master/sample)にあ
ります。

### すべてがオブジェクト

元のRubyスクリプトの例:

```ruby
5.times { print "We *love* Ruby -- it's outrageous!" }
```

日本語で書いたRubyスクリプトの例:

```ruby
5.回{ 印字 "みんなRubyが*大好き* -- Rubyはすごいぜ!" }
```

### Rubyの柔軟性

元のRubyスクリプトの例:

```ruby
class Numeric
  def plus(x)
    self.+(x)
  end
end

y = 5.plus 6
# y は 11 になります
```

日本語で書いたRubyスクリプトの例:

```ruby
組(数値) {
  定義(:足す) {|他の数|
    自分.+(他の数)
  }
}

ある数 = 5.足す 6
# ある数 は 11 になります
```

### ブロック: 表現力豊かな機能

元のRubyスクリプトの例:

```ruby
search_engines =
  %w[Google Yahoo MSN].map do |engine|
    "http://www." + engine.downcase + ".com"
  end
```

日本語で書いたRubyスクリプトの例:

```ruby
検索エンジン =
  %w[Google Yahoo MSN].対応させる{|エンジン|
    "http://www." + エンジン.小文字にする + ".com"
  }
```

### RubyとMixin

元のRubyスクリプトの例:

```ruby
class MyArray
  include Enumerable
end
```

日本語で書いたRubyスクリプトの例:

```ruby
組(:私家版の配列) {
  付加 列挙できる
}
```

日本語のRubyスクリプトの書き方
------------------------------

<!--
略語や和名の記述について

略語や和名は各々の段落毎に最初に出現する箇所で括弧で括って示す。すなわ
ち段落が変わるごとにあらためて定義を示す。各段落中の二回目以降の出現箇
所については無条件で使ってよい。
-->

### 日本語の有効化

スクリプトエンコーディングをUTF-8に設定し、Rubyスクリプトの先頭で
`ruby-japanize`を`require`します。

```ruby
# -*- coding: utf-8 -*-

require 'japanize'
```

元のRubyに日本語の定義を追加するだけなので、日本語で書くRubyスクリプト
は日本語化していない通常のRubyスクリプトと共存できます。

### 日本語の変数と定数

ローカル変数(局所変数)、グローバル変数(大域変数)、インスタンス変数(生
成物の変数)は特に何もしなくても普通に日本語が使えます。これはRubyの元々
の機能です。

クラス変数は残念ながら日本語で書いたRubyスクリプトから使うことができま
せん。これはクラス変数がレキシカルスコープと結び付いているのでメタプロ
グラミングで実現している日本語の機能から参照できないためです。

#### 日本語の定数

Rubyの定数はアルファベットの大文字で始まる規則になっています。日本語に
は一般的に大文字や小文字の概念がないので、そのままでは日本語で定数を定
義できません。そこで定数の代わりに日本語のクラスメソッド/モジュールメ
ソッドを使うことにしました。このため定数の定義や参照の仕方が元のRubyス
クリプトと異なるので注意してください。

##### 定数の定義

`日本語の定数`で定数を定義します。トップレベル(最上位)およびクラス(組)/モ
ジュール(部)のスコープで使えます。

元のRubyスクリプトの例:

```ruby
FOO = 'FOO'

class Foo
  BAR = 'BAR'

  class Bar
    BAZ = 'BAZ'
  end
end
```

日本語で書いたRubyスクリプトの例:

```ruby
日本語の定数 :イ, 'イ'

組(:甲) {                       # 日本語のクラス定義
  日本語の定数 :ロ, 'ロ'

  組(:乙) {
    日本語の定数 :ハ, 'ハ'
  }
}
```

##### 定数の参照

日本語の定数は実際はメソッド(操作)で定義されているため、`self`(`自分`)
を意識して参照する必要があります。

元のRubyスクリプトの例:

```ruby
p FOO
p Foo::BAR
p Foo::Bar::BAZ

class Foo
  p FOO                         # 最上位の定数はどこからでも参照できる
  p BAR                         # 自クラスの定数を参照できる

  def foo
    p FOO                       # 最上位の定数はどこからでも参照できる
    p BAR                       # 自クラスの定数をメソッド(操作)から参照できる
  end

  class Bar
    p FOO                       # 最上位の定数はどこからでも参照できる
    p BAR                       # 外側の定数を内側から参照できる
    p BAZ                       # 自クラスの定数を参照できる

    def bar
      p FOO                     # 最上位の定数はどこからでも参照できる
      p BAR                     # 外側の定数を内側から参照できる
      p BAZ                     # 自クラスの定数をメソッド(操作)から参照できる
    end
  end
end
```

日本語で書いたRubyスクリプトの例:

```ruby
点検 イ                         # 点検はpの日本語版
点検 甲::ロ
点検 甲::乙::ハ

組(甲) {
  点検 イ                       # 最上位の日本語定数はどこからでも参照できる
  点検 ロ                       # 自クラスの日本語定数は参照できる

  定義(:ある操作) {             # 日本語のメソッド定義
    点検 イ                     # 最上位の日本語定数はどこからでも参照できる
    点検 生成元::ロ             # self(自分)が異なるので日本語定数に生成元(self.classの日本語版)を付ける必要がある
    点検 ロ                     # これは失敗する
  }

  組(乙) {
    点検 イ                     # 最上位の日本語定数はどこからでも参照できる
    点検 ::JA::甲::ロ           # 自クラス以外の日本語定数は最上位(::JA)から参照する、通常の定数のように内側から参照することはできない
    点検 ハ                     # 自クラスの日本語定数は参照できる

    定義(:ある操作) {
      点検 イ                   # 最上位の日本語定数はどこからでも参照できる
      点検 ::JA::甲::ロ         # 自クラス以外の日本語定数は最上位(::JA)から参照する
      点検 生成元::ハ           # self(自分)が異なるので日本語定数に生成元(self.classの日本語版)を付ける必要がある
    }
  }
}
```

##### 定数のinclude(付加)

モジュール(部)の定数は`include`(`付加`)した先で参照できますが、日本語
の定数はモジュールメソッドになるため`include`した先で参照できません。

`日本語の定数を付加できること`を宣言すると日本語の定数も`include`した
先で参照できるようになります。

元のRubyスクリプトの例:

```ruby
module Foo
  FOO = 'FOO'
end

class Bar
  include Foo

  p FOO                         # includeした先で参照できる

  def bar
    p FOO
  end
end
```

日本語で書いたRubyスクリプトの例:

```ruby
部(:甲) {                       # 日本語のモジュール定義
  日本語の定数 :イ, 'イ'
  日本語の定数 :ロ, 'ロ'

  日本語の定数を付加できること :イ
}

組(:乙) {
  付加 甲                       # 日本語のinclude宣言

  点検 イ                       # 付加できると宣言したので参照できる

  定義(:丙) {
    点検 生成元::イ
  }

  点検 ロ                       # 付加できると宣言してないので失敗する
}
```

### 日本語の制御構造

#### 肯否分岐

##### if文に相当する制御構造

元のRubyスクリプトの例:

```ruby
if (age >= 12) then
  print "adult fee\n"
else
  print "child fee\n"
end

gender = if (foo.gender == "male") then "male" else "female" end
```

日本語で書いたRubyスクリプトの例:

```ruby
この条件が{ 年齢 >= 12 }.であるなら{
  印字 "大人料金\n"
}.でなければ{
  印字 "子供料金\n"
}.である

性別 = この条件が{ 甲.性別 == "男性" }.であるなら{ "男性" }.でなければ{ "女性" }.である
```

文法:

```
この条件が{ 式 }.であるなら{
  式 ...
[}.この条件が{ 式 }.であるなら{
  式 ... ]
...
[}.でなければ{
  式 ... ]
}.である
```

##### unless文に相当する制御構造

元のRubyスクリプトの例:

```ruby
unless (baby?) then
  feed_meat
else
  feed_milk
end
```

日本語で書いたRubyスクリプトの例:

```ruby
この条件が{ 赤ちゃんか? }.でなければ{
  肉を食べさせる
}.であるなら{
  ミルクを飲ませる
}.である
```

文法:

```
この条件が{ 式 }.でなければ{
  式 ...
[}.であるなら{
  式 ... ]
}.である
```

#### 条件分岐

##### case文に相当する制御構造

元のRubyスクリプトの例:

```ruby
case (age)
when 0..2
  "baby"
when 3..6
  "little child"
when 7..12
  "child"
when 13..18
  "youth"
else
  "adult"
end
```

日本語で書いたRubyスクリプトの例:

```ruby
この値が{
  年齢
}.もし{ 0..2 }.であるなら{
  "赤ちゃん"
}.もし{ 3..6 }.であるなら{
  "幼児"
}.もし{ 7..12 }.であるなら{
  "子供"
}.もし{ 13..18 }.であるなら{
  "若者"
}.でなければ{
  "大人"
}.である
```

文法:

```
この値が{
  式
[}.もし{ 式 [}.か{ 式] ... }.であるなら{
  式... ]
...
[}.でなければ{
  式... ]
}.である
```

#### 繰り返し

##### while文に相当する制御構造

元のRubyスクリプトの例:

```ruby
ary = [ 0, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024 ]
i = 0
while (i < ary.length)
  puts ary[i]
  i += 1
  # break, next, redo が使える
end
```

日本語で書いたRubyスクリプトの例:

```ruby
一覧 = [ 0, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024 ]
添字 = 0
この条件なら{ 添字 < 一覧.長さ }.繰り返す{ #|制御|
  行出力 一覧[添字]
  添字 += 1
  # 制御.終わる, 制御.次へ進む, 制御.やり直す が使える
}
```

文法:

```
この条件なら{ 式 }.繰り返す{[|制御|]
  式 ...
  [制御.終わる [式]]
  [制御.次へ進む]
  [制御.やり直す]
  式 ...
}
```

##### until文に相当する制御構造

元のRubyスクリプトの例:

```ruby
until (f.eof?)
  print f.gets
  # break, next, redo が使える
end
```

日本語で書いたRubyスクリプトの例:

```ruby
この条件まで{ あるファイル.終端か? }.繰り返す{ #|制御|
  印字 あるファイル.行を取得
  # 制御.終わる, 制御.次へ進む, 制御.やり直す が使える
}
```

文法:

```
この条件まで{ 式 }.繰り返す{[|制御|]
  式 ...
  [制御.終わる [式]]
  [制御.次へ進む]
  [制御.やり直す]
  式 ...
}
```

##### 後置のwhile文に相当する制御構造

元のRubyスクリプトの例:

```ruby
send_request(data)
begin
  res = get_response()
  # break, next, redo が使える
end while (res == 'Continue')
```

日本語で書いたRubyスクリプトの例:

```ruby
要求を送信(情報)
繰り返す{ #|制御|
  結果 = 応答を取得()
  # 制御.終わる, 制御.次へ進む, 制御.やり直す が使える
}.この条件なら{ 結果 == '継続' }
```

文法:

```
繰り返す{[|制御|]
  式 ...
  [制御.終わる [式]]
  [制御.次へ進む]
  [制御.やり直す]
  式 ...
}.この条件なら{ 式 }
```

##### 後置のuntil文に相当する制御構造

元のRubyスクリプトの例:

```ruby
send_request(data)
begin
  res = get_response()
  # break, next, redo が使える
end until (res == 'OK')
```

日本語で書いたRubyスクリプト例:

```ruby
要求を送信(情報)
繰り返す{ #|制御|
  結果 = 応答を取得()
  # 制御.終わる, 制御.次へ進む, 制御.やり直す が使える
}.この条件まで{ 結果 == '完了' }
```

文法:

```
繰り返す{[|制御|]
  式 ...
  [制御.終わる [式]]
  [制御.次へ進む]
  [制御.やり直す]
  式 ...
}.この条件まで{ 式 }
```

##### for文に相当する制御構造

for文に相当する繰り返しを実行するには、`each`メソッド(操作)の日本語の
別名である`個別に`メソッドを使います。繰り返しを日本語で制御
(`break`/`next`/`redo`)する場合は`繰り返す`メソッドを使います。
`個別に`メソッドが`列挙`(`Enumerator`)を返す場合に`繰り返す`メソッドが
使えます。また`繰り返す`メソッドは`個別に`メソッドに限らず`列挙`を返す
全てのメソッドで使えます。

元のRubyスクリプトの例:

```ruby
for i in [ 1, 2, 3 ]
  print i * 2, "\n"
  # break, next, redo が使える
end
```

日本語で書いたRubyスクリプトの例:

```ruby
[ 1, 2, 3 ].個別に{|数|
  印字 数 * 2, "\n"
}
```

または

```ruby
[ 1, 2, 3 ].個別に.繰り返す{|制御, 数|
  印字 数 * 2, "\n"
  # 制御.終わる, 制御.次へ進む, 制御.やり直す が使える
}
```

文法:

```ruby
式.個別に{|引数 ...|
  式 ...
}
```

または

```ruby
式.個別に.繰り返す{|制御[, 引数 ...]|
  式 ...
  [制御.終わる [式]]
  [制御.次へ進む]
  [制御.やり直す]
  式 ...
}
```

#### 例外処理

##### 例外の発生

例外を発生させるには`raise`の別名である`例外を発生`を使います。

元のRubyスクリプトの例:

```ruby
raise "you lose"                # 例外 RuntimeError を発生させる

# 以下の二つは SyntaxError を発生させる
raise SyntaxError, "invalid syntax"
raise SyntaxError.new("invalid syntax")

raise                           # 最後の例外の再発生
```

日本語で書いたRubyスクリプトの例:

```ruby
例外を発生 "損失"               # 例外 実行時の失敗 (RuntimeError) を発生させる

# 以下の二つは 文法誤りのため失敗 (SyntaxError) を発生させる
例外を発生 文法誤りのため失敗, "文法が不正です"
例外を発生 文法誤りのため失敗.新規("文法が不正です")

例外を発生                      # 最後の例外を再発生
```

##### begin/endに相当する制御構造

元のRubyスクリプトの例:

```ruby
begin
  do_something
rescue => e
  recover(e)
  # retry が使える
ensure
  must_to_do
end
```

日本語で書いたRubyスクリプトの例:

```ruby
領域{|制御|
  制御.本処理{
    何かをする
  }
  制御.例外を補足{|発生した例外|
    復旧する(発生した例外)
    # 制御.やり直す が使える
  }
  制御.後始末{
    必ず実行する
  }
}
```

文法:

```
領域{|制御|
  制御.本処理{
    式 ...
    [制御.戻る [式[, 式] ...]]
    式 ...
  }
  [制御.例外を捕捉[(式[, 式] ...)] {|発生した例外|
    式 ...
    [制御.戻る [式[, 式] ...]]
    [制御.やり直す]
    式 ...
  }]
  ...
  [制御.例外が無い時{
    式 ...
    [制御.戻る [式[, 式] ...]]
    式 ...
  }]
  [制御.後始末{
    式 ...
  }]
}
```

### 日本語のクラス(組)/メソッド(操作)の定義

#### クラス(組)の定義

クラス(組)を定義するには`組`を使います。クラスの名前は`記号`(`Symbol`)
で与えます。既に定義済みのクラスを再定義する時は、名前の代わりにクラス
を返す式を与えてもかまいません。

元のRubyスクリプトの例:

```ruby
class Foo < Super
  def test
    :
  end
    :
end
```

日本語で書いたRubyスクリプトの例:

```ruby
組(:甲, 原型: 親) {
  定義(:試行) {
    :
  }
    :
}
```

文法:

```
組(記号または式[, 原型: 親クラス]) {
  式 ...
}
```

##### 定義したクラス(組)の参照

`記号`で名前を与えてクラス(組)を定義した場合、そのクラスの名前の日本語
の定数が定義されます。このため定義したクラスの名前で参照することができ
るようになります。

元のRubyスクリプトの例:

```ruby
class Foo
end

p Foo
```

日本語で書いたRubyスクリプトの例:

```ruby
組(:甲) {
}

点検 甲
```

#### 特異クラス(特異組)の定義

特異クラス(特異組)を定義するには`特異組`を使います。`特異組`は
`物`(`Object`)が持つメソッド(操作)です。

元のRubyスクリプトの例:

```ruby
obj = Object.new
class << obj
  def test
    :
  end
    :
end
```

日本語で書いたRubyスクリプトの例:

```ruby
ある物 = 物.新規
ある物.特異組{
  定義(:試行) {
    :
  }
    :
}
```

文法:

```
式.特異組{
  式 ...
}
```

##### 特異クラス(特異組)の参照

特異クラス(特異組)を参照するには`特異組`を使います。`特異組`は
`物`(`Object`)が持つメソッド(操作)です。

元のRubyスクリプトの例:

```ruby
obj = Object.new
p obj.singleton_class
```

日本語で書いたRubyスクリプトの例:

```ruby
ある物 = 物.新規
点検 ある物.特異組
```

#### モジュールの定義

モジュール(部)を定義するには`部`を使います。モジュールの名前は`記号`
(`Symbol`)で与えます。既に定義済みのモジュールを再定義する時は、名前の
代わりにモジュールを返す式を与えてもかまいません。

元のRubyスクリプトの例:

```ruby
module Foo
  def test
    :
  end
    :
end
```

日本語で書いたRubyスクリプトの例:

```ruby
部(:甲) {
  定義(:試行) {
    :
  }
    :
}
```

文法:

```
部(記号または式) {
  式 ...
}
```

##### 定義したモジュール(部)の参照

`記号`で名前を与えてモジュール(部)を定義した場合、そのモジュールの名前
の日本語の定数が定義されます。このため定義したモジュールの名前で参照す
ることができるようになります。

元のRubyスクリプトの例:

```ruby
module Foo
end

p Foo
```

日本語で書いたRubyスクリプトの例:

```ruby
部(:甲) {
}

点検 甲
```
#### メソッド(操作)の定義

メソッド(操作)を定義するには`define_method`の別名である`定義`を使いま
す。

元のRubyスクリプトの例:

```ruby
def fact(n)
  if (n == 1) then
    1
  else
    n * fact(n - 1)
  end
end
```

日本語で書いたRubyスクリプトの例:

```ruby
定義(:階乗) {|数|
  もし条件が{ 数 == 1 }.であるなら{
    1
  }.でなければ{
    数 * 階乗(数 - 1)
  }.である
}
```

文法:

```
定義(記号) {[|引数 ...|]
  式 ...
}
```

##### ブロック(手続き)の実行

`define_method`で定義したメソッド(操作)は`yield`でブロック(手続き)を実
行することができません。したがって`define_method`の別名である`定義`で
定義したメソッドも同様に`yield`が使えません。

ブロックの実行はブロック引数を使ってください。

元のRubyスクリプトの例:

```ruby
def foo
  if (block_given?) then
    yield(1, 2)
  end
end
```

日本語で書いたRubyスクリプトの例:

```ruby
定義(:甲) {|&塊|
  # yield だけでなく block_given? も使えない
  もし条件が{ 塊.無値か? }.でなければ{
    塊[1, 2]
  }.である
}
```

##### return文に相当する制御構造

Rubyではメソッド(操作)から抜けるのに`return`を使いますが、`return`は予
約語なのでメソッド(操作)のように日本語の別名を定義することができません。
日本語の制御構造で`return`と同様の動作を行うには、メソッドの内側で
`領域`を定義し`領域`から`戻る`ことで実現します。

元のRubyスクリプトの例:

```ruby
def foo
  return 1, 2, 3
end
```

日本語で書いたRubyスクリプトの例:

```ruby
定義(:甲) {
  領域{|制御|
    制御.戻る 1, 2, 3
  }
}
```

文法:

```
定義(記号) {[|引数 ...|]
  領域{|制御|
    式 ...
    [制御.戻る [式[, 式] ...]]
    式 ...
  }
}
```

##### 英語のメソッド(操作)の自動定義

Rubyのいくつかのメソッド(操作)はシステムと連係します。例えばオブジェク
ト(`物`)の状態を`p`(`点検`)するのに`inspect`の結果を使ったり、オブジェ
クトを文字列に変換するのに`to_s`を使ったりなどです。

そこで、これらの英語のメソッドを日本語でも定義できるようにしています。
特定の名前の日本語のメソッドを定義すると、その日本語のメソッドを呼び出
す英語のメソッドを自動的に定義するようになっています。

英語のメソッドが自動的に定義される日本語のメソッドは次のとおりです。

|メソッド(操作)の分類|日本語のメソッド(操作)|英語のメソッド(操作)|
|--------------------|----------------------|--------------------|
|変換操作            |`検査`                |`inspect`           |
|変換操作            |`配列に変換`          |`to_a`              |
|変換操作            |`連想配列に変換`      |`to_h`              |
|変換操作            |`文字列に変換`        |`to_s`              |
|変換操作            |`記号に変換`          |`to_sym`            |
|変換操作            |`整数に変換`          |`to_i`              |
|変換操作            |`浮動小数点に変換`    |`to_f`              |
|変換操作            |`有理数に変換`        |`to_r`              |
|変換操作            |`複素数に変換`        |`to_c`              |
|繰り返し操作        |`個別に`              |`each`              |
|繰り返し操作        |`キー毎に`            |`each_key`          |
|繰り返し操作        |`値毎に`              |`each_value`        |
|繰り返し操作        |`対毎に`              |`each_pair`         |
|入れ物の操作        |`取得`                |`fetch`             |
|入れ物の操作        |`格納`                |`store`             |
|入れ物の操作        |`削除`                |`delete`            |
|入れ物の操作        |`大きさ`              |`size`              |
|入れ物の操作        |`長さ`                |`length`            |
|入れ物の操作        |`空か?`               |`empty?`            |
|入れ物の操作        |`キーの一覧`          |`keys`              |
|入れ物の操作        |`キーか?`             |`key?`              |
|入れ物の操作        |`キーを持つか?`       |`has_key?`          |
|入れ物の操作        |`含むか?`             |`include?`          |
|入れ物の操作        |`一員か?`             |`member?`           |
|物を分解する操作    |`分解`                |`deconstruct`       |
|物を分解する操作    |`キーで分解`          |`deconstruct_keys`  |

#### 特異メソッド(特異操作)の定義

特異メソッド(特異操作)を定義するには`define_singleton_method`の別名で
ある`特異操作の定義`を使います。`特異操作の定義`は`物`(`Object`)が持つ
メソッド(操作)です。

元のRubyスクリプトの例:

```ruby
def foo.test
  print "this is foo\n"
end
```

日本語で書いたRubyスクリプトの例:

```ruby
甲.特異操作の定義(:試行) {
  印字 "これは甲です\n"
}
```

文法:

```
式.特異操作の定義(記号) {[|引数 ...|]
  式 ...
}
```

##### ブロック(手続き)の実行

通常のメソッド(操作)と同様です。

##### return文に相当する制御構造

通常のメソッド(操作)と同様です。

##### 英語のメソッド(操作)の自動定義

通常のメソッド(操作)と同様です。

#### 逆引用符(`)記法によるメソッド(操作)の定義

逆引用符(`` ` ``)内で`定義`を使うことでメソッド(操作)を定義でき
ます。この逆引用符(`` ` ``)記法はRubyの`def`文によるメソッド(操作)
の定義に相当します。Rubyの`def`文は`end`で終了する必要がありますが、バッ
ククォート(`` ` ``)記法は逆引用符(`` ` ``)で終了が明示されるので
`end`に相当する日本語の予約語はありません。

元のRubyスクリプトの例:

```ruby
def fact(n)
  if (n == 1) then
    1
  else
    n * fact(n - 1)
  end
end
```

日本語で書いたRubyスクリプトの例:

```ruby
`定義 階乗(数)
  もし条件が{ 数 == 1 }.であるなら{
    1
  }.でなければ{
    数 * 階乗(数 - 1)
  }.である
`
```

##### メソッド(操作)の引数を転送する略記法

逆引用符(`` ` ``)記法によるメソッド(操作)の定義ではRuby 2.7で導
入された、メソッド(操作)の引数を転送する略記法(`(...)`)が使えます。ま
たRuby 2.7だけでなくRuby 2.6でも略記法(`(...)`)が使えます。

元のRubyスクリプトの例:

```ruby
# Ruby 2.7から有効
def foo(...)
  @other.foo(...)
end
```

日本語で書いたRubyスクリプトの例:

```ruby
# Ruby 2.7だけでなくRuby 2.6でも有効
`定義 甲(...)
   @別の物.甲(...)
`
```

##### メソッド(操作)の末尾の引数を転送する略記法

逆引用符(`` ` ``)記法によるメソッド(操作)の定義では末尾の引数を
転送する略記法(`[...]`)が使えます。この略記法は独自の機能です。

元のRubyスクリプトの例:

```ruby
# 明示的に引数を転送しなければならない
def method_missing(name, *args, **kw_args, &block)
  @other.__send__(name, *args, **kw_args, &block)
end
```

日本語で書いたRubyスクリプトの例:

```ruby
# 略記法で末尾の引数を転送できる
`定義 不明な操作(名前, [...])
   @別の物.__送信__(名前, [...])
`
```

### メソッド(操作)の呼び出し

メソッド(操作)の呼び出しは、メソッドの名前が日本語になっただけで元々の
Rubyと変わりはありません。

#### superの日本語の定義は無い

`super`の日本語の定義は無いので、オーバーライドしたメソッド(操作)を呼
び出すにはそのまま`super`を使ってください。

`super`は予約語なのでメソッドのように日本語の別名を定義することができ
ません。`super`を日本語で定義することはメタプログラミングを駆使すれば
できなくはないのですが、効率が悪いので実装する意味は無いと判断しました。

#### ブロック(手続き)の制御

単純にブロック(手続き)付きでメソッド(操作)を呼ぶだけなら元々のRubyと変
わりはありません。ブロックを日本語で制御(`break`/`next`/`redo`)する場
合は`手続きを渡す`を使います。`手続きを渡す`は`物`(`Object`)が持つメソッ
ドです。

元のRubyスクリプトの例:

```ruby
count = 0
ARGF.each_line do |line|
  next if line.strip.empty?     # 空行を無視
  break if (line =~ /eof/)      # 終了
  print line
  if (line =~ /dup/) then       # 再実行×3回
    if (count < 3) then
      count += 1
      redo
    end
  end
end
```

日本語で書いたRubyスクリプトの例:

```ruby
回数 = 0
スクリプトの入力.手続きを渡す(:行毎に) {|制御, 行|
  もし条件が{ 行.空白を削る.空か? }.であるなら{ 制御.次へ進む }.である
  もし条件が{ 行 =~ /終わり/ }.であるなら{ 制御.終わる }.である
  印字 行
  もし条件が{ 行 =~ /繰り返し/ }.であるなら{
    もし条件が{ 回数 < 3 }.であるなら{
      回数 += 1
      制御.やり直す
    }.である
  }.である
}
```

文法:

```
式.手続きを渡す(記号[, 引数 ...][, 秘密の操作を許可: 真偽値]) {|制御[, 引数 ...]|
  式 ...
  [制御.終わる [式]]
  [制御.次へ進む [式]]
  [制御.やり直す]
  式 ...
}
```

### 日本語で書けない機能

次の予約語はメソッド(操作)による代替が困難なため日本語で書けません。
必要ならそのまま英語で使ってください。

- `BEGIN`
- `END`
- `not` (`!`を使ってください)
- `and` (`&&`を使ってください)
- `or` (`||`を使ってください)
- `super`
- `__END__`
- `__LINE__`
- `__FILE__`
- `__ENCODING__`

補遺
----

### 組み込みライブラリの日本語対応表

[base.rb]:https://github.com/y10k/ruby-japanize/blob/master/lib/japanize/base.rb
[container.rb]:https://github.com/y10k/ruby-japanize/blob/master/lib/japanize/container.rb
[core.rb]:https://github.com/y10k/ruby-japanize/blob/master/lib/japanize/core.rb
[enum.rb]:https://github.com/y10k/ruby-japanize/blob/master/lib/japanize/enum.rb
[errors.rb]:https://github.com/y10k/ruby-japanize/blob/master/lib/japanize/errors.rb
[globals.rb]:https://github.com/y10k/ruby-japanize/blob/master/lib/japanize/globals.rb
[io.rb]:https://github.com/y10k/ruby-japanize/blob/master/lib/japanize/io.rb
[names.rb]:https://github.com/y10k/ruby-japanize/blob/master/lib/japanize/names.rb
[num.rb]:https://github.com/y10k/ruby-japanize/blob/master/lib/japanize/num.rb
[process.rb]:https://github.com/y10k/ruby-japanize/blob/master/lib/japanize/process.rb
[string.rb]:https://github.com/y10k/ruby-japanize/blob/master/lib/japanize/string.rb
[syntax.rb]:https://github.com/y10k/ruby-japanize/blob/master/lib/japanize/syntax.rb
[sys.rb]:https://github.com/y10k/ruby-japanize/blob/master/lib/japanize/sys.rb
[test_unit.rb]:https://github.com/y10k/ruby-japanize/blob/master/lib/japanize/test_unit.rb
[thread.rb]:https://github.com/y10k/ruby-japanize/blob/master/lib/japanize/thread.rb
[time.rb]:https://github.com/y10k/ruby-japanize/blob/master/lib/japanize/time.rb
[version.rb]:https://github.com/y10k/ruby-japanize/blob/master/lib/japanize/version.rb

#### 組み込みのグローバル変数(大域変数)の日本語対応表

|グローバル変数(大域変数)の日本語名|グローバル変数(大域変数)の英語名|グローバル変数(大域変数)の定義     |
|----------------------------------|--------------------------------|-----------------------------------|
|`$配置された機能の一覧`           |`$LOADED_FEATURES`              |[`lib/japanize/names.rb`][names.rb]|
|`$配置対象の探索経路`             |`$LOAD_PATH`                    |[`lib/japanize/names.rb`][names.rb]|
|`$点検中`                         |`$DEBUG`                        |[`lib/japanize/names.rb`][names.rb]|
|`$冗長`                           |`$VERBOSE`                      |[`lib/japanize/names.rb`][names.rb]|
|`$プログラムの名前`               |`$PROGRAM_NAME`                 |[`lib/japanize/names.rb`][names.rb]|
|`$ファイル名`                     |`$FILENAME`                     |[`lib/japanize/names.rb`][names.rb]|
|`$安全度`                         |`$SAFE`                         |[`lib/japanize/names.rb`][names.rb]|
|`$標準入力`                       |`$stdin`                        |[`lib/japanize/names.rb`][names.rb]|
|`$標準出力`                       |`$stdout`                       |[`lib/japanize/names.rb`][names.rb]|
|`$標準エラー出力`                 |`$stderr`                       |[`lib/japanize/names.rb`][names.rb]|

#### 組み込みのオブジェクト(物)の日本語対応表

|オブジェクト(物)の日本語名|オブジェクト(物)の英語名|オブジェクト(物)の定義                 |
|--------------------------|------------------------|---------------------------------------|
|`自分`                    |`self`                  |[`lib/japanize/core.rb`][core.rb]      |
|`無値`                    |`nil`                   |[`lib/japanize/names.rb`][names.rb]    |
|`真値`                    |`true`                  |[`lib/japanize/names.rb`][names.rb]    |
|`偽値`                    |`false`                 |[`lib/japanize/names.rb`][names.rb]    |
|`スクリプトの引数`        |`ARGV`                  |[`lib/japanize/names.rb`][names.rb]    |
|`スクリプトの入力`        |`ARGF`                  |[`lib/japanize/globals.rb`][globals.rb]|
|`スクリプトの資料`        |`DATA`                  |[`lib/japanize/names.rb`][names.rb]    |
|`環境変数`                |`ENV`                   |[`lib/japanize/globals.rb`][globals.rb]|
|`標準エラー出力`          |`STDERR`                |[`lib/japanize/names.rb`][names.rb]    |
|`標準入力`                |`STDIN`                 |[`lib/japanize/names.rb`][names.rb]    |
|`標準出力`                |`STDOUT`                |[`lib/japanize/names.rb`][names.rb]    |
|`最上位の束縛`            |`TOPLEVEL_BINDING`      |[`lib/japanize/names.rb`][names.rb]    |

#### 組み込みのクラス(組)の日本語対応表

|クラス(組)の日本語名              |クラス(組)の英語名              |クラス(組)の定義                           |
|----------------------------------|--------------------------------|-------------------------------------------|
|`物の土台`                        |`BasicObject`                   |[`lib/japanize/base.rb`][base.rb]          |
|`物`                              |`Object`                        |[`lib/japanize/base.rb`][base.rb]          |
|`配列`                            |`Array`                         |[`lib/japanize/container.rb`][container.rb]|
|`束縛`                            |`Binding`                       |[`lib/japanize/sys.rb`][sys.rb]            |
|`ディレクトリ`                    |`Dir`                           |[`lib/japanize/io.rb`][io.rb]              |
|`文字符号化方式`                  |`Encoding`                      |[`lib/japanize/string.rb`][string.rb]      |
|`文字符号化方式::変換器`          |`Encoding::Converter`           |[`lib/japanize/string.rb`][string.rb]      |
|`列挙`                            |`Enumerator`                    |[`lib/japanize/enum.rb`][enum.rb]          |
|`列挙::継手`                      |`Enumerator::Chain`             |[`lib/japanize/enum.rb`][enum.rb]          |
|`列挙::生成器`                    |`Enumerator::Generator`         |[`lib/japanize/enum.rb`][enum.rb]          |
|`列挙::補給器`                    |`Enumerator::Yielder`           |[`lib/japanize/enum.rb`][enum.rb]          |
|`列挙::生産器`                    |`Enumerator::Producer`          |[`lib/japanize/enum.rb`][enum.rb]          |
|`列挙::等差数列`                  |`Enumerator::ArithmeticSequence`|[`lib/japanize/enum.rb`][enum.rb]          |
|`列挙::遅延評価`                  |`Enumerator::Lazy`              |[`lib/japanize/enum.rb`][enum.rb]          |
|`偽値の組`                        |`FalseClass`                    |[`lib/japanize/base.rb`][base.rb]          |
|`ファイバー`                      |`Fiber`                         |[`lib/japanize/thread.rb`][thread.rb]      |
|`ファイル::状態`                  |`File::Stat`                    |[`lib/japanize/io.rb`][io.rb]              |
|`連想配列`                        |`Hash`                          |[`lib/japanize/container.rb`][container.rb]|
|`入出力`                          |`IO`                            |[`lib/japanize/io.rb`][io.rb]              |
|`ファイル`                        |`File`                          |[`lib/japanize/io.rb`][io.rb]              |
|`正規表現が一致した結果`          |`MatchData`                     |[`lib/japanize/string.rb`][string.rb]      |
|`操作`                            |`Method`                        |[`lib/japanize/sys.rb`][sys.rb]            |
|`部`                              |`Module`                        |[`lib/japanize/base.rb`][base.rb]          |
|`組`                              |`Class`                         |[`lib/japanize/base.rb`][base.rb]          |
|`無値の組`                        |`NilClass`                      |[`lib/japanize/base.rb`][base.rb]          |
|`数値`                            |`Numeric`                       |[`lib/japanize/num.rb`][num.rb]            |
|`複素数`                          |`Complex`                       |[`lib/japanize/num.rb`][num.rb]            |
|`浮動小数点`                      |`Float`                         |[`lib/japanize/num.rb`][num.rb]            |
|`整数`                            |`Integer`                       |[`lib/japanize/num.rb`][num.rb]            |
|`有理数`                          |`Rational`                      |[`lib/japanize/num.rb`][num.rb]            |
|`物の空間::弱参照の連想配列`      |`ObjectSpace::WeakMap`          |[`lib/japanize/sys.rb`][sys.rb]            |
|`手続き型`                        |`Proc`                          |[`lib/japanize/sys.rb`][sys.rb]            |
|`プロセス::状態`                  |`Process::Status`               |[`lib/japanize/process.rb`][process.rb]    |
|`プロセス::積算時間`              |`Process::Tms`                  |[`lib/japanize/process.rb`][process.rb]    |
|`プロセス::子プロセスの終了の待機`|`Process::Waiter`               |[`lib/japanize/process.rb`][process.rb]    |
|`疑似乱数生成器`                  |`Random`                        |[`lib/japanize/num.rb`][num.rb]            |
|`疑似乱数生成器::書式`            |`Random::Formatter`             |[`lib/japanize/num.rb`][num.rb]            |
|`範囲`                            |`Range`                         |[`lib/japanize/container.rb`][container.rb]|
|`正規表現`                        |`Regexp`                        |[`lib/japanize/string.rb`][string.rb]      |
|`文字列`                          |`String`                        |[`lib/japanize/string.rb`][string.rb]      |
|`構造体`                          |`Struct`                        |[`lib/japanize/container.rb`][container.rb]|
|`記号`                            |`Symbol`                        |[`lib/japanize/string.rb`][string.rb]      |
|`スレッド`                        |`Thread`                        |[`lib/japanize/thread.rb`][thread.rb]      |
|`スレッド::呼び出し履歴::場所`    |`Thread::Backtrace::Location`   |[`lib/japanize/thread.rb`][thread.rb]      |
|`スレッド::条件変数`              |`Thread::ConditionVariable`     |[`lib/japanize/thread.rb`][thread.rb]      |
|`スレッド::相互排他制御`          |`Thread::Mutex`                 |[`lib/japanize/thread.rb`][thread.rb]      |
|`スレッド::待ち行列`              |`Thread::Queue`                 |[`lib/japanize/thread.rb`][thread.rb]      |
|`スレッド::上限付き待ち行列`      |`Thread::SizedQueue`            |[`lib/japanize/thread.rb`][thread.rb]      |
|`スレッドの群れ`                  |`ThreadGroup`                   |[`lib/japanize/thread.rb`][thread.rb]      |
|`時刻`                            |`Time`                          |[`lib/japanize/time.rb`][time.rb]          |
|`発生事象の追跡`                  |`TracePoint`                    |[`lib/japanize/sys.rb`][sys.rb]            |
|`真値の組`                        |`TrueClass`                     |[`lib/japanize/base.rb`][base.rb]          |
|`未束縛の操作`                    |`UnboundMethod`                 |[`lib/japanize/sys.rb`][sys.rb]            |

次のクラスは適切な日本語名称がないので定義していません。
英語のままで使ってください

- `RubyVM`

#### 組み込みのモジュール(部)の日本語対応表

|モジュール(部)の日本語名            |モジュール(部)の英語名|モジュール(部)の定義                   |
|------------------------------------|----------------------|---------------------------------------|
|`比較できる`                        |`Comparable`          |[`lib/japanize/num.rb`][num.rb]        |
|`列挙できる`                        |`Enumerable`          |[`lib/japanize/enum.rb`][enum.rb]      |
|`ファイル::定数`                    |`File::Constants`     |[`lib/japanize/io.rb`][io.rb]          |
|`ファイルの検査`                    |`FileTest`            |[`lib/japanize/io.rb`][io.rb]          |
|`ゴミ集め`                          |`GC`                  |[`lib/japanize/sys.rb`][sys.rb]        |
|`ゴミ集め::統計情報`                |`GC::Profiler`        |[`lib/japanize/sys.rb`][sys.rb]        |
|`入出力::読み込み待ちのため失敗`    |`IO::WaitReadable`    |[`lib/japanize/io.rb`][io.rb]          |
|`入出力::書き込み待ちのため失敗`    |`IO::WaitWritable`    |[`lib/japanize/io.rb`][io.rb]          |
|`核`                                |`Kernel`              |[`lib/japanize/base.rb`][base.rb]      |
|`直列化`                            |`Marshal`             |[`lib/japanize/sys.rb`][sys.rb]        |
|`数学`                              |`Math`                |[`lib/japanize/num.rb`][num.rb]        |
|`物の空間`                          |`ObjectSpace`         |[`lib/japanize/sys.rb`][sys.rb]        |
|`プロセス`                          |`Process`             |[`lib/japanize/process.rb`][process.rb]|
|`プロセス::グループ識別番号`        |`Process::GID`        |[`lib/japanize/process.rb`][process.rb]|
|`プロセス::識別番号のシステムコール`|`Process::Sys`        |[`lib/japanize/process.rb`][process.rb]|
|`プロセス::ユーザ識別番号`          |`Process::UID`        |[`lib/japanize/process.rb`][process.rb]|
|`シグナル`                          |`Signal`              |[`lib/japanize/process.rb`][process.rb]|
|`警告の出力`                        |`Warning`             |[`lib/japanize/sys.rb`][sys.rb]        |

次のモジュールは適切な日本語名称がないので定義していません。
英語のままで使ってください

- `Errno`

#### 組み込みの例外の日本語対応表

|例外の日本語名                                    |例外の英語名                        |例外の定義                           |
|--------------------------------------------------|------------------------------------|-------------------------------------|
|`例外`                                            |`Exception`                         |[`lib/japanize/base.rb`][base.rb]    |
|`記憶領域不足のため失敗`                          |`NoMemoryError`                     |[`lib/japanize/names.rb`][names.rb]  |
|`スクリプトの失敗`                                |`ScriptError`                       |[`lib/japanize/names.rb`][names.rb]  |
|`配置の失敗`                                      |`LoadError`                         |[`lib/japanize/errors.rb`][errors.rb]|
|`未実装のため失敗`                                |`NotImplementedError`               |[`lib/japanize/names.rb`][names.rb]  |
|`文法誤りのため失敗`                              |`SyntaxError`                       |[`lib/japanize/names.rb`][names.rb]  |
|`安全を侵害するため失敗`                          |`SecurityError`                     |[`lib/japanize/names.rb`][names.rb]  |
|`シグナルの例外`                                  |`SignalException`                   |[`lib/japanize/errors.rb`][errors.rb]|
|`割り込み`                                        |`Interrupt`                         |[`lib/japanize/names.rb`][names.rb]  |
|`標準的な失敗`                                    |`StandardError`                     |[`lib/japanize/names.rb`][names.rb]  |
|`引数が誤っているため失敗`                        |`ArgumentError`                     |[`lib/japanize/names.rb`][names.rb]  |
|`脱出を捕捉できないため失敗`                      |`UncaughtThrowError`                |[`lib/japanize/errors.rb`][errors.rb]|
|`文字符号化方式の失敗`                            |`EncodingError`                     |[`lib/japanize/names.rb`][names.rb]  |
|`文字符号化方式::互換性がないため失敗`            |`Encoding::CompatibilityError`      |[`lib/japanize/names.rb`][names.rb]  |
|`文字符号化方式::変換器が存在しないため失敗`      |`Encoding::ConverterNotFoundError`  |[`lib/japanize/names.rb`][names.rb]  |
|`文字符号化方式::バイト列が不正なため失敗`        |`Encoding::InvalidByteSequenceError`|[`lib/japanize/errors.rb`][errors.rb]|
|`文字符号化方式::変換後の文字が存在しないため失敗`|`Encoding::UndefinedConversionError`|[`lib/japanize/errors.rb`][errors.rb]|
|`ファイバーの失敗`                                |`FiberError`                        |[`lib/japanize/names.rb`][names.rb]  |
|`入出力の失敗`                                    |`IOError`                           |[`lib/japanize/names.rb`][names.rb]  |
|`ファイル終端のため失敗`                          |`EOFError`                          |[`lib/japanize/names.rb`][names.rb]  |
|`添字が範囲外のため失敗`                          |`IndexError`                        |[`lib/japanize/names.rb`][names.rb]  |
|`キーの照合に失敗`                                |`KeyError`                          |[`lib/japanize/errors.rb`][errors.rb]|
|`繰り返しの停止`                                  |`StopIteration`                     |[`lib/japanize/errors.rb`][errors.rb]|
|`待ち行列が閉鎖済みのため失敗`                    |`ClosedQueueError`                  |[`lib/japanize/names.rb`][names.rb]  |
|`局所的な跳躍に失敗`                              |`LocalJumpError`                    |[`lib/japanize/errors.rb`][errors.rb]|
|`数学::定義域外のため失敗`                        |`Math::DomainError`                 |[`lib/japanize/names.rb`][names.rb]  |
|`名前解決に失敗`                                  |`NameError`                         |[`lib/japanize/errors.rb`][errors.rb]|
|`操作が無いため失敗`                              |`NoMethodError`                     |[`lib/japanize/errors.rb`][errors.rb]|
|`範囲外のため失敗`                                |`RangeError`                        |[`lib/japanize/names.rb`][names.rb]  |
|`浮動小数点の定義域外のため失敗`                  |`FloatDomainError`                  |[`lib/japanize/names.rb`][names.rb]  |
|`正規表現の失敗`                                  |`RegexpError`                       |[`lib/japanize/names.rb`][names.rb]  |
|`実行時の失敗`                                    |`RuntimeError`                      |[`lib/japanize/names.rb`][names.rb]  |
|`凍結済みのため失敗`                              |`FrozenError`                       |[`lib/japanize/names.rb`][names.rb]  |
|`適合する類型が無いため失敗`                      |`NoMatchingPatternError`            |[`lib/japanize/names.rb`][names.rb]  |
|`システムコールの失敗`                            |`SystemCallError`                   |[`lib/japanize/errors.rb`][errors.rb]|
|`スレッドの失敗`                                  |`ThreadError`                       |[`lib/japanize/names.rb`][names.rb]  |
|`型が合わないため失敗`                            |`TypeError`                         |[`lib/japanize/names.rb`][names.rb]  |
|`零除算のため失敗`                                |`ZeroDivisionError`                 |[`lib/japanize/names.rb`][names.rb]  |
|`システムの終了`                                  |`SystemExit`                        |[`lib/japanize/errors.rb`][errors.rb]|
|`システムのスタックが超過したため失敗`            |`SystemStackError`                  |[`lib/japanize/names.rb`][names.rb]  |

次の例外は適切な日本語名称がないので定義していません。
英語のままで使ってください

- `Errno::*`

### 代表的な用語の日本語と英語の対応表

|日本語    |英語      |
|----------|----------|
|引数      |args      |
|塊        |block     |
|組, 生成元|class     |
|生成物    |instance  |
|操作      |method    |
|部        |module    |
|物        |object    |
|原型      |superclass|

### どうしても日本語に直せなかったカタカナ語の一覧表

|カタカナ語                          |英語             |備考                                |
|------------------------------------|---------------- |------------------------------------|
|グリニッジ標準時                    |GMT              |固有名詞                            |
|ネイピア数                          |Napier's constant|固有名詞                            |
|XMLスキーマ                         |XML schema       |固有名詞                            |
|アスキー                            |ascii            |固有名詞                            |
|バイナリ                            |binary           |概念を一言で表現できなかった        |
|ビット                              |bit              |概念を一言で表現できなかった        |
|バイト                              |byte             |概念を一言で表現できなかった        |
|(オペレーティングシステムの)コマンド|command          |概念を一言で表現できなかった        |
|カリー化                            |curry            |概念を一言で表現できなかった        |
|データ領域                          |data             |概念を一言で表現できなかった        |
|ディレクトリ                        |directory        |概念を一言で表現できなかった        |
|ファイバー                          |fiber            |概念を一言で表現できなかった        |
|ファイル                            |file             |概念を一言で表現できなかった        |
|ファイルシステム                    |filesystem       |概念を一言で表現できなかった        |
|書記素クラスタ                      |grapheme cluster |固有名詞                            |
|(オペレーティングシステムの)グループ|group            |概念を一言で表現できなかった        |
|ハッシュ値                          |hash             |概念を一言で表現できなかった        |
|キー                                |key              |直訳では実際の用途を表現できなかった|
|ロケール                            |locale           |概念を一言で表現できなかった        |
|電子メール                          |mail             |固有名詞                            |
|マイクロ                            |micro            |SI接頭辞                            |
|ナノ                                |nano             |SI接頭辞                            |
|(オペレーティングシステムの)プロセス|process          |概念を一言で表現できなかった        |
|プログラム                          |program          |概念を一言で表現できなかった        |
|スクリプト                          |script           |概念を一言で表現できなかった        |
|(オペレーティングシステムの)シグナル|signal           |概念を一言で表現できなかった        |
|ソケット                            |socket           |概念を一言で表現できなかった        |
|スタック                            |stack            |概念を一言で表現できなかった        |
|標準エラー出力                      |stderr           |固有名詞                            |
|システム                            |system           |概念を一言で表現できなかった        |
|システムコール                      |system call      |概念を一言で表現できなかった        |
|スレッド                            |thread           |概念を一言で表現できなかった        |
|ユニコード                          |unicode          |固有名詞                            |
|(オペレーティングシステムの)ユーザ  |user             |概念を一言で表現できなかった        |

貢献方法
--------

問題報告やプルリクはGithubの<https://github.com/y10k/ruby-japanize>で
受け付けています。

ライセンス
----------

このgemは[MIT License](https://opensource.org/licenses/MIT)ライセンス
の元でオープンソースとして提供されます。
