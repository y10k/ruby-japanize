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
    }
  }
}

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
