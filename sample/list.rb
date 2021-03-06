# -*- coding: utf-8 -*-

require 'japanize'

# 連結リストの例

組(:私家版の要素) {
  # 物の初期化は 組#新規 から呼ばれる
  定義(:初期化) {|項目|
    # @変数 は生成物の変数、宣言は不要
    @情報 = 項目
    @次 = 無値
  }

  定義(:情報) {
    @情報
  }

  定義(:次) {
    @次
  }

  # この操作は ``物.次 = 値'' で起動される
  定義(:次=) {|新しい要素|
    @次 = 新しい要素
  }
}

組(:私家版のリスト) {
  定義(:リストに追加する) {|ある物|
    要素 = 私家版の要素.新規(ある物)
    もし条件が{ @先頭 }.であるなら{
      @末尾.次 = 要素
    }.でなければ{
      @先頭 = 要素
    }.である
    @末尾 = 要素
  }

  定義(:個別に) {|&塊|
    要素 = @先頭
    この条件なら{ 要素 }.繰り返す{
      塊[要素]
      要素 = 要素.次
    }
  }

  # この操作は物を文字列に変換する。
  # 再定義すると印字に影響する。
  定義(:文字列に変換) {
    ある文字列 = "<私家版のリスト:\n"
    個別に{|要素|
      # ``ある文字列 = ある文字列 + 要素.情報.文字列に変換 + "\n"''の短縮形
      ある文字列 += 要素.情報.文字列に変換 + "\n"
    }
    ある文字列 += ">"
    ある文字列
  }
}

組(:点) {
  定義(:初期化) {|x, y|
    @x = x; @y = y
    自分
  }

  定義(:文字列に変換) {
    文字列に整形("%d@%d", @x, @y)
  }
}

# 大域変数の名前は`$'で始まる
$リスト1 = 私家版のリスト.新規
$リスト1.リストに追加する(10)
$リスト1.リストに追加する(20)
$リスト1.リストに追加する(点.新規(2, 3))
$リスト1.リストに追加する(点.新規(4, 5))
$リスト2 = 私家版のリスト.新規
$リスト2.リストに追加する(20)
$リスト2.リストに追加する(点.新規(4, 5))
$リスト2.リストに追加する($リスト1)

# 操作の引数の前後の括弧は曖昧でなければ省略できる
印字 "リスト1:\n", $リスト1, "\n"
印字 "リスト2:\n", $リスト2, "\n"

