# -*- coding: utf-8 -*-

require 'japanize'

あるディレクトリ = ディレクトリ.開く(".")
あるディレクトリ.個別に{|あるファイル|
  この値が{
    あるファイル
  }.もし{ /\A\./ }.か{ /~\z/ }.か{ /\\.o/ }.であるなら{
    # 何も出力しない
  }.でなければ{
    印字 あるファイル, "\n"
  }.である
}
あるディレクトリ.閉じる