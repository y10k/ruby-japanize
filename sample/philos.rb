# -*- coding: utf-8 -*-

require 'japanize'

#
# 食事する哲学者の問題 - スレッドの例
#

乱数の種を設定
#乱数の種を設定
日本語の定数 :人数, 9           # 哲学者の人数
$分岐の一覧 = []
(0..人数-1).個別に{|番号|
  $分岐の一覧[番号] = スレッド::相互排他制御.新規
}
$状態 = "-o"*人数

定義(:待つ) {
  休止 乱数(20)/10.0
}

定義(:考える) {|番号|
  待つ
}

定義(:食べる) {|番号|
  待つ
}

定義(:哲学者) {|番号|
  この条件なら{ 真値 }.繰り返す{|制御|
    考える 番号
    $分岐の一覧[番号].獲得
    もし条件が{ ! $分岐の一覧[(番号+1)%人数].可能なら獲得 }.であるなら{
      $分岐の一覧[番号].解放
      制御.次へ進む
    }.である
    $状態[番号*2] = ?|
    $状態[(番号+1)%人数*2] = ?|
    $状態[番号*2+1] = ?*
    印字 $状態, "\n"
    食べる(番号)
    $状態[番号*2] = ?-
    $状態[(番号+1)%人数*2] = ?-
    $状態[番号*2+1] = ?o
    印字 $状態, "\n"
    $分岐の一覧[番号].解放
    $分岐の一覧[(番号+1)%人数].解放
  }
}

(0..人数-1).個別に{|番号|
  スレッド.開始(番号) {|数| 哲学者(数) }
  休止 0.1
}

休止
