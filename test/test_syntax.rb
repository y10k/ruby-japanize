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

      資料('条件が真' => [ 真値, [ :条件節, :肯定節 ], :甲 ],
           '条件が偽' => [ 偽値, [ :条件節, :否定節 ], :乙 ])
      試験('肯否分岐命令を確認') {|資料|
        分岐の条件, 期待する呼び出し履歴, 期待する評価結果 = 資料

        呼び出し履歴 = []
        評価結果 = \
        もし条件が{
          呼び出し履歴 << :条件節
          分岐の条件
        }.であるなら{
          呼び出し履歴 << :肯定節
          :甲
        }.でなければ{
          呼び出し履歴 << :否定節
          :乙
        }.である

        等しいことを確認(期待する呼び出し履歴, 呼び出し履歴)
        等しいことを確認(期待する評価結果, 評価結果)
      }

      資料('条件が偽' => [ 偽値, [ :条件節, :否定節 ], :甲 ],
           '条件が真' => [ 真値, [ :条件節, :肯定節 ], :乙 ])
      試験('逆肯否分岐命令を確認') {|資料|
        分岐の条件, 期待する呼び出し履歴, 期待する評価結果 = 資料

        呼び出し履歴 = []
        評価結果 = \
        もし条件が{
          呼び出し履歴 << :条件節
          分岐の条件
        }.でなければ{
          呼び出し履歴 << :否定節
          :甲
        }.であるなら{
          呼び出し履歴 << :肯定節
          :乙
        }.である

        等しいことを確認(期待する呼び出し履歴, 呼び出し履歴)
        等しいことを確認(期待する評価結果, 評価結果)
      }

      資料('条件が真' => [ 真値, [ :条件節, :肯定節 ], :甲 ],
           '条件が偽' => [ 偽値, [ :条件節 ],          無値 ])
      試験('単独の肯否分岐命令を確認') {|資料|
        分岐の条件, 期待する呼び出し履歴, 期待する評価結果 = 資料

        呼び出し履歴 = []
        評価結果 = \
        もし条件が{
          呼び出し履歴 << :条件節
          分岐の条件
        }.であるなら{
          呼び出し履歴 << :肯定節
          :甲
        }.である

        等しいことを確認(期待する呼び出し履歴, 呼び出し履歴)
        等しいことを確認(期待する評価結果, 評価結果)
      }

      資料('条件が偽' => [ 偽値, [ :条件節, :否定節 ], :甲 ],
           '条件が真' => [ 真値, [ :条件節 ],          無値 ])
      試験('単独の逆肯否分岐命令を確認') {|資料|
        分岐の条件, 期待する呼び出し履歴, 期待する評価結果 = 資料

        呼び出し履歴 = []
        評価結果 = \
        もし条件が{
          呼び出し履歴 << :条件節
          分岐の条件
        }.でなければ{
          呼び出し履歴 << :否定節
          :甲
        }.である

        等しいことを確認(期待する呼び出し履歴, 呼び出し履歴)
        等しいことを確認(期待する評価結果, 評価結果)
      }

      資料('1番目が成立'   => [ :甲, [ :最初の条件節, :最初の肯定節 ],                                 :イ ],
           '2番目が成立'   => [ :乙, [ :最初の条件節, :第二の条件節, :第二の肯定節 ],                  :ロ ],
           '3番目が成立'   => [ :丙, [ :最初の条件節, :第二の条件節, :第三の条件節, :第三の肯定節 ],   :ハ ],
           '条件が不成立'  => [ :他, [ :最初の条件節, :第二の条件節, :第三の条件節, :その他の終了節 ], :ニ ])
      試験('連続した肯否分岐命令を確認') {|資料|
        分岐の値, 期待する呼び出し履歴, 期待する評価結果 = 資料

        呼び出し履歴 = []
        評価結果 = \
        もし条件が{
          呼び出し履歴 << :最初の条件節
          分岐の値 == :甲
        }.であるなら{
          呼び出し履歴 << :最初の肯定節
          :イ
        }.もし条件が{
          呼び出し履歴 << :第二の条件節
          分岐の値 == :乙
        }.であるなら{
          呼び出し履歴 << :第二の肯定節
          :ロ
        }.もし条件が{
          呼び出し履歴 << :第三の条件節
          分岐の値 == :丙
        }.であるなら{
          呼び出し履歴 << :第三の肯定節
          :ハ
        }.でなければ{
          呼び出し履歴 << :その他の終了節
          :ニ
        }.である

        等しいことを確認(期待する呼び出し履歴, 呼び出し履歴)
        等しいことを確認(期待する評価結果, 評価結果)
      }

      資料('1番目が成立'   => [ :甲, [ :最初の条件節, :最初の肯定節 ],                                 :イ ],
           '2番目が成立'   => [ :乙, [ :最初の条件節, :第二の条件節, :第二の肯定節 ],                  :ロ ],
           '3番目が成立'   => [ :丙, [ :最初の条件節, :第二の条件節, :第三の条件節, :第三の肯定節 ],   :ハ ],
           '条件が不成立'  => [ :他, [ :最初の条件節, :第二の条件節, :第三の条件節 ],                  無値 ])
      試験('終了節が無い連続した肯否分岐命令を確認') {|資料|
        分岐の値, 期待する呼び出し履歴, 期待する評価結果 = 資料

        呼び出し履歴 = []
        評価結果 = \
        もし条件が{
          呼び出し履歴 << :最初の条件節
          分岐の値 == :甲
        }.であるなら{
          呼び出し履歴 << :最初の肯定節
          :イ
        }.もし条件が{
          呼び出し履歴 << :第二の条件節
          分岐の値 == :乙
        }.であるなら{
          呼び出し履歴 << :第二の肯定節
          :ロ
        }.もし条件が{
          呼び出し履歴 << :第三の条件節
          分岐の値 == :丙
        }.であるなら{
          呼び出し履歴 << :第三の肯定節
          :ハ
        }.である

        等しいことを確認(期待する呼び出し履歴, 呼び出し履歴)
        等しいことを確認(期待する評価結果, 評価結果)
      }
    }
  }
}

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
