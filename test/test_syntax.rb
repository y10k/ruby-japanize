# -*- coding: utf-8 -*-

require 'japanize/core'

要求 'japanize/syntax'
要求 'japanize/test_unit'

部(日本語化) {
  部(:試験) {
    組(:制御命令の試験, 原型: 試験単位::試験事例) {
      試験('繰り返し命令の確認') {
        ある配列 = %w[ 甲 乙 丙 ]

        回数 = 0
        返り値 = 繰り返す(ある配列) {|項目|
          回数 += 1
          case (回数)
          when 1
            等しいことを確認('甲', 項目)
          when 2
            等しいことを確認('乙', 項目)
          when 3
            等しいことを確認('丙', 項目)
          else
            失敗させる
          end
        }
        等しいことを確認(ある配列, 返り値)
      }
    }
  }
}

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
