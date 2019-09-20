# -*- coding: utf-8 -*-

require 'japanize/core'

要求 'japanize/test_unit'

部(日本語化) {
  部(:試験) {
    組(:核となる仕組みの試験, 原型: 試験単位::試験事例) {
      試験('操作の範囲で日本語名称を確認') {
        等しいことを確認(self,                自分)
        等しいことを確認(Japanize::TOP_LEVEL, 最上位)

        等しいことを確認(Japanize, 日本語化)
        等しいことを確認(Kernel,   核)
        等しいことを確認(Module,   部)
        等しいことを確認(Class,    組)
        等しいことを確認(Object,   物)
        等しいことを確認(Symbol,   記号)
        等しいことを確認(String,   文字列)

        等しいことを確認(Test::Unit, 試験単位)
        確認(試験単位::試験事例 < Test::Unit::TestCase)
      }

      資料('自分'   => [ self,                自分 ],
           '最上位' => [ Japanize::TOP_LEVEL, 最上位 ],

           '日本語化' => [ Japanize, 日本語化 ],
           '核'       => [ Kernel,   核 ],
           '部'       => [ Module,   部 ],
           '組'       => [ Class,    組 ],
           '物'       => [ Object,   物 ],
           '記号'     => [ Symbol,   記号 ],
           '文字列'   => [ String,   文字列 ],

           '試験単位' => [ Test::Unit, 試験単位 ])
      試験('部の範囲で日本語名称を確認') {|資料|
        期待値, 日本語化した値 = 資料
        等しいことを確認(期待値, 日本語化した値)
      }

      試験('日本語名称の絶対パスを確認') {
        等しいことを確認(Japanize, ::JA::日本語化)
        等しいことを確認(Kernel,   ::JA::核)
        等しいことを確認(Module,   ::JA::部)
        等しいことを確認(Class,    ::JA::組)
        等しいことを確認(Object,   ::JA::物)
        等しいことを確認(Symbol,   ::JA::記号)
        等しいことを確認(String,   ::JA::文字列)

        等しいことを確認(Test::Unit, ::JA::試験単位)
        確認(::JA::試験単位::試験事例 < Test::Unit::TestCase)
      }

      試験('日本語の定数を確認') {
        ある組 = 組.new

        ある組.日本語の定数(:甲, 'ア')
        等しいことを確認('ア', ある組::甲)

        ある組.日本語の定数(:乙) { 'イ' }
        等しいことを確認('イ', ある組::乙)

        例外が発生することを確認(ArgumentError) {
          ある組.日本語の定数(:丙)
        }

        例外が発生することを確認(ArgumentError) {
          ある組.日本語の定数(:丙, 'エ') { 'オ' }
        }

        例外が発生することを確認(ArgumentError) {
          ある組.日本語の定数(:丙, 'エ', 'オ')
        }

        例外が発生することを確認(ArgumentError) {
          ある組.日本語の定数(:丙) {|*引数| 'オ' }
        }
      }

      資料('最上位の定義済みの日本語の定数'   => [ 最上位,   :物 ],
           '日本語化の定義済みの日本語の定数' => [ 日本語化, :物 ],
           '定義済みの日本語の定数'           => [ 試験単位, :試験事例 ])
      試験('部の定義の型が合わないため失敗することを確認') {|資料|
        名前空間, ある部 = 資料

        例外が発生することを確認(TypeError) {
          名前空間.instance_eval{
            部(ある部) {}
          }
        }
      }

      資料('原型が組ではない'                 => [ 最上位,   :物,       { 原型: 日本語化 } ],
           '最上位の定義済みの日本語の定数'   => [ 最上位,   :日本語化 ],
           '最上位の組の原型が合わない'       => [ 最上位,   :文字列,   { 原型: 記号 } ],
           '日本語化の定義済みの日本語の定数' => [ 日本語化, :日本語化 ],
           '日本語化の組の原型が合わない'     => [ 日本語化, :文字列,   { 原型: 記号 } ],
           '定義済みの日本語の定数'           => [ 試験単位, :確認手段 ],
           '組の原型が合わない'               => [ 試験単位, :試験事例, { 原型: 物 } ])
      試験('組の定義の型が合わないため失敗することを確認') {|資料|
        名前空間, ある組, 名前付き引数 = 資料
        名前付き引数 ||= {}

        例外が発生することを確認(TypeError) {
          名前空間.instance_eval{
            組(ある組, **名前付き引数) {}
          }
        }
      }
    }
  }
}

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
