# -*- coding: utf-8 -*-

require 'japanize'

# 複数に分割する
# 使い方: mpart.rb [-行数] ファイル..

行数 = 1000

もし条件が{ スクリプトの引数[0] =~ /^-(\d+)$/ }.であるなら{
  行数 = $1.整数に変換
  スクリプトの引数.先頭から取り出す
}.である

元の名前 = スクリプトの引数[0]
拡張子 = "part"

分割 = 1
行 = 0

ファイルの行 = 0
(入力ファイル = ファイルを開く(元の名前)).個別に{
  ファイルの行 = ファイルの行 + 1
}
入力ファイル.閉じる

分割数 = ファイルの行 / 行数 + 1

出力ファイル = 無値             # 繰り返しや肯否分岐がスコープを作るので、あらかじめローカル変数を初期化しておく必要がある
(入力ファイル = ファイルを開く(元の名前)).個別に{|内容|
  もし条件が{ 行 == 0 }.であるなら{
    出力ファイル = ファイルを開く(文字列に整形("%s.%s%02d", 元の名前, 拡張子, 分割), "w")
    整形して印字(出力ファイル, "%s part%02d/%02d\n", 元の名前, 分割, 分割数)
    出力ファイル.書く("BEGIN--cut here--cut here\n")
  }.である
  出力ファイル.書く(内容)
  行 = 行 + 1
  もし条件が{ 行 >= 行数 && ! 入力ファイル.終端か? }.であるなら{
    出力ファイル.書く("END--cut here--cut here\n")
    出力ファイル.閉じる
    分割 = 分割 + 1
    行 = 0
  }.である
}
出力ファイル.書く("END--cut here--cut here\n")
出力ファイル.閉じる

入力ファイル.閉じる
