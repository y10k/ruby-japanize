# -*- coding: utf-8 -*-

require 'japanize'

定義(:階乗) {|ある数|
  もし条件が{ ある数 == 0 }.であるなら{
    1
  }.でなければ{
    階乗 = 1
    ある数.降順(1) {|数|
      階乗 *= 数
    }
    階乗
  }.である
}

印字 階乗(スクリプトの引数[0].整数に変換), "\n"