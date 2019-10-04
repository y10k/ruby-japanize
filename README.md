ruby-japanize
=============

日本語のキーワードや構文を定義してRubyを日本語で書けるようにする。

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

貢献方法
--------

問題報告やプルリクはGithubの<https://github.com/y10k/ruby-japanize>で
受け付けています。

ライセンス
----------

このgemは[MIT License](https://opensource.org/licenses/MIT)ライセンス
の元でオープンソースとして提供されます。
