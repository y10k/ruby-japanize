# -*- coding: utf-8 -*-

require 'japanize/core'

要求 'japanize/enum'
要求 'japanize/test_unit'
要求 'japanize/container'       # 範囲#進む のため

部(日本語化) {
  部(:試験) {
    組(:列挙できる物の操作の試験, 原型: 試験単位::試験事例) {
      資料('全てにおいて成り立つか?'            => [ :全てにおいて成り立つか?,            :all? ],
           '何れかが成り立つか?'                => [ :何れかが成り立つか?,                :any? ],
           '連続した塊に分ける'                 => [ :連続した塊に分ける,                 :chunk ],
           'この条件で連続した塊に分ける'       => [ :この条件で連続した塊に分ける,       :chunk_while ],
           '集める'                             => [ :集める,                             :collect ],
           '対応させる'                         => [ :対応させる,                         :map ],
           '対応させて平らにする'               => [ :対応させて平らにする,               :flat_map ],
           '集めて連結する'                     => [ :集めて連結する,                     :collect_concat ],
           '数える'                             => [ :数える,                             :count ],
           '循環させる'                         => [ :循環させる,                         :cycle ],
           '見つける'                           => [ :見つける,                           :find ],
           '捨てる'                             => [ :捨てる,                             :drop ],
           'この条件で捨てる'                   => [ :この条件で捨てる,                   :drop_while ],
           '区間毎に'                           => [ :区間毎に,                           :each_cons ],
           '要素毎に'                           => [ :要素毎に,                           :each_entry ],
           '断片毎に'                           => [ :断片毎に,                           :each_slice ],
           '順番付きで個別に'                   => [ :順番付きで個別に,                   :each_with_index ],
           '覚え書き付きで個別に'               => [ :覚え書き付きで個別に,               :each_with_object ],
           '配列に変換'                         => [ :配列に変換,                         :to_a ],
           '要素の一覧'                         => [ :要素の一覧,                         :entries ],
           '全て見つける'                       => [ :全て見つける,                       :find_all ],
           '選択する'                           => [ :選択する,                           :select ],
           '抽出する'                           => [ :抽出する,                           :filter ],
           '見つけたら位置を返す'               => [ :見つけたら位置を返す,               :find_index ],
           '先頭'                               => [ :先頭,                               :first ],
           '検索'                               => [ :検索,                               :grep ],
           '対象外を検索'                       => [ :対象外を検索,                       :grep_v ],
           '条件毎に集める'                     => [ :条件毎に集める,                     :group_by ],
           '一員か?'                            => [ :一員か?,                            :member? ],
           '含むか?'                            => [ :含むか?,                            :include? ],
           '織り込む'                           => [ :織り込む,                           :inject ],
           '畳み込む'                           => [ :畳み込む,                           :reduce ],
           '遅延評価'                           => [ :遅延評価,                           :lazy ],
           '最大'                               => [ :最大,                               :max ],
           'この条件で最大'                     => [ :この条件で最大,                     :max_by ],
           '最小'                               => [ :最小,                               :min ],
           'この条件で最小'                     => [ :この条件で最小,                     :min_by ],
           '最小と最大'                         => [ :最小と最大,                         :minmax ],
           'この条件で最小と最大'               => [ :この条件で最小と最大,               :minmax_by ],
           '何れも成り立たないか?'              => [ :何れも成り立たないか?,              :none? ],
           '一つだけ成り立つか?'                => [ :一つだけ成り立つか?,                :one? ],
           '分ける'                             => [ :分ける,                             :partition ],
           '除く'                               => [ :除く,                               :reject ],
           '逆順で個別に'                       => [ :逆順で個別に,                       :reverse_each ],
           'この条件で終わる所で切り分ける'     => [ :この条件で終わる所で切り分ける,     :slice_after ],
           'この条件で始まる所で切り分ける'     => [ :この条件で始まる所で切り分ける,     :slice_before ],
           'この条件が成り立つ境界で切り分ける' => [ :この条件が成り立つ境界で切り分ける, :slice_when ],
           '整列'                               => [ :整列,                               :sort ],
           'この条件で整列'                     => [ :この条件で整列,                     :sort_by ],
           '合計'                               => [ :合計,                               :sum ],
           '引き出す'                           => [ :引き出す,                           :take ],
           'この条件で引き出す'                 => [ :この条件で引き出す,                 :take_while ],
           '連想配列に変換'                     => [ :連想配列に変換,                     :to_h ],
           '重複を削除'                         => [ :重複を削除,                         :uniq ],
           'より合わせる'                       => [ :より合わせる,                       :zip ])
      試験('公開された操作の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        ある列挙できる物 = 物.新規
        ある列挙できる物.拡張(列挙できる)
        一種であることを確認(列挙できる, ある列挙できる物)
        別名であることを確認(ある列挙できる物, 日本語の別名, 元の名前)
        含まれることを確認(列挙できる.生成物が持つ公開された操作の一覧, 日本語の別名)
      }
    }

    組(:列挙の操作の試験, 原型: 試験単位::試験事例) {
      資料('個別に'                 => [ :個別に,                 :each ],
           '与える'                 => [ :与える,                 :feed ],
           '次の値'                 => [ :次の値,                 :next ],
           '次の値の一覧'           => [ :次の値の一覧,           :next_values ],
           '次の値を覗く'           => [ :次の値を覗く,           :peek ],
           '次の値の一覧を覗く'     => [ :次の値の一覧を覗く,     :peek_values ],
           '巻き戻す'               => [ :巻き戻す,               :rewind ],
           '大きさ'                 => [ :大きさ,                 :size ],
           '順番付きで繰り返す'     => [ :順番付きで繰り返す,     :with_index ],
           '覚え書き付きで繰り返す' => [ :覚え書き付きで繰り返す, :with_object ])
      試験('公開された操作の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        ある列挙 = [].列挙する
        生成物であることを確認(列挙, ある列挙)
        別名であることを確認(ある列挙, 日本語の別名, 元の名前)
        含まれることを確認(列挙.生成物が持つ公開された操作の一覧, 日本語の別名)
      }
    }

    組(:列挙_等差数列の操作の試験, 原型: 試験単位::試験事例) {
      資料('初項'                  => [ :初項,                  :begin ],
           '始端'                  => [ :始端,                  :begin ],
           '個別に'                => [ :個別に,                :each ],
           '上界'                  => [ :上界,                  :end ],
           '終端'                  => [ :終端,                  :end ],
           '上界が除かれているか?' => [ :上界が除かれているか?, :exclude_end? ],
           '終端が除かれているか?' => [ :終端が除かれているか?, :exclude_end? ],
           '先頭'                  => [ :先頭,                  :first ],
           '末尾'                  => [ :末尾,                  :last ],
           '大きさ'                => [ :大きさ,                :size ],
           '公差'                  => [ :公差,                  :step ])
      試験('公開された操作の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        ある等差数列 = (1..10).間を進む
        生成物であることを確認(列挙::等差数列, ある等差数列)
        別名であることを確認(ある等差数列, 日本語の別名, 元の名前)
        含まれることを確認(列挙::等差数列.生成物が持つ公開された操作の一覧, 日本語の別名)
      }
    }

    組(:列挙_遅延評価の操作の試験, 原型: 試験単位::試験事例) {
      資料('連続した塊に分ける'                 => [ :連続した塊に分ける,                 :chunk ],
           'この条件で連続した塊に分ける'       => [ :この条件で連続した塊に分ける,       :chunk_while ],
           '対応させる'                         => [ :対応させる,                         :map ],
           '集める'                             => [ :集める,                             :collect ],
           '対応させて平らにする'               => [ :対応させて平らにする,               :flat_map ],
           '集めて連結する'                     => [ :集めて連結する,                     :collect_concat ],
           '捨てる'                             => [ :捨てる,                             :drop ],
           'この条件で捨てる'                   => [ :この条件で捨てる,                   :drop_while ],
           '列挙に変換'                         => [ :列挙に変換,                         :to_enum ],
           '列挙する'                           => [ :列挙する,                           :enum_for ],
           '選択する'                           => [ :選択する,                           :select ],
           '全て見つける'                       => [ :全て見つける,                       :find_all ],
           '抽出する'                           => [ :抽出する,                           :filter ],
           '直ちに評価する'                     => [ :直ちに評価する,                     :force ],
           '検索'                               => [ :検索,                               :grep ],
           '対象外を検索'                       => [ :対象外を検索,                       :grep_v ],
           '遅延評価'                           => [ :遅延評価,                           :lazy ],
           '除く'                               => [ :除く,                               :reject ],
           'この条件で終わる所で切り分ける'     => [ :この条件で終わる所で切り分ける,     :slice_after ],
           'この条件で始まる所で切り分ける'     => [ :この条件で始まる所で切り分ける,     :slice_before ],
           'この条件が成り立つ境界で切り分ける' => [ :この条件が成り立つ境界で切り分ける, :slice_when ],
           '引き出す'                           => [ :引き出す,                           :take ],
           'この条件で引き出す'                 => [ :この条件で引き出す,                 :take_while ],
           '重複を削除'                         => [ :重複を削除,                         :uniq ],
           'より合わせる'                       => [ :より合わせる,                       :zip ])
      試験('公開された操作の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        ある列挙 = [].列挙する.遅延評価
        生成物であることを確認(列挙::遅延評価, ある列挙)
        別名であることを確認(ある列挙, 日本語の別名, 元の名前)
        含まれることを確認(列挙::遅延評価.生成物が持つ公開された操作の一覧, 日本語の別名)
      }
    }
  }
}

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
