# -*- coding: utf-8 -*-

require 'japanize/core'

要求 'japanize/container'
要求 'japanize/test_unit'

部(日本語化) {
  部(:試験) {
    組(:配列の操作の試験, 原型: 試験単位::試験事例) {
      資料('可能なら変換' => [ :可能なら変換, :try_convert ])
      試験('特異操作の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        別名であることを確認(配列, 日本語の別名, 元の名前)
        含まれることを確認(配列.公開された操作の一覧, 日本語の別名)
      }

      資料('位置'                   => [ :位置,                   :at ],
           '付け足す'               => [ :付け足す,               :push ],
           '連想取得'               => [ :連想取得,               :assoc ],
           '二分探索する'           => [ :二分探索する,           :bsearch ],
           '二分探索して位置を返す' => [ :二分探索して位置を返す, :bsearch_index ],
           '消去する'               => [ :消去する,               :clear ],
           '集める!'                => [ :集める!,                :collect! ],
           '対応させる!'            => [ :対応させる!,            :map! ],
           '組み合わせ'             => [ :組み合わせ,             :combination ],
           '詰める'                 => [ :詰める,                 :compact ],
           '詰める!'                => [ :詰める!,                :compact! ],
           '連結'                   => [ :連結,                   :concat ],
           '循環させる'             => [ :循環させる,             :cycle ],
           '削除'                   => [ :削除,                   :delete ],
           '位置で削除'             => [ :位置で削除,             :delete_at ],
           '条件で削除'             => [ :条件で削除,             :delete_if ],
           '除く!'                  => [ :除く!,                  :reject! ],
           '差分'                   => [ :差分,                   :difference ],
           '探り当てる'             => [ :探り当てる,             :dig ],
           '個別に'                 => [ :個別に,                 :each ],
           '添字毎に'               => [ :添字毎に,               :each_index ],
           '空か?'                  => [ :空か?,                  :empty? ],
           '取得'                   => [ :取得,                   :fetch ],
           '満たす'                 => [ :満たす,                 :fill ],
           '抽出する!'              => [ :抽出する!,              :filter! ],
           '選択する!'              => [ :選択する!,              :select! ],
           '見つけたら位置を返す'   => [ :見つけたら位置を返す,   :find_index ],
           '位置を取得'             => [ :位置を取得,             :index ],
           '先頭'                   => [ :先頭,                   :first ],
           '平らにする'             => [ :平らにする,             :flatten ],
           '平らにする!'            => [ :平らにする!,            :flatten! ],
           '含むか?'                => [ :含むか?,                :include? ],
           '挿入'                   => [ :挿入,                   :insert ],
           '結合'                   => [ :結合,                   :join ],
           '条件で残す'             => [ :条件で残す,             :keep_if ],
           '末尾'                   => [ :末尾,                   :last ],
           '長さ'                   => [ :長さ,                   :length ],
           '大きさ'                 => [ :大きさ,                 :size ],
           '最大'                   => [ :最大,                   :max ],
           '最小'                   => [ :最小,                   :min ],
           '情報を梱包'             => [ :情報を梱包,             :pack ],
           '順列'                   => [ :順列,                   :permutation ],
           '取り出す'               => [ :取り出す,               :pop ],
           '先頭に付け足す'         => [ :先頭に付け足す,         :unshift ],
           '直積'                   => [ :直積,                   :product ],
           '逆連想取得'             => [ :逆連想取得,             :rassoc ],
           '組み合わせを繰り返す'   => [ :組み合わせを繰り返す,   :repeated_combination ],
           '順列を繰り返す'         => [ :順列を繰り返す,         :repeated_permutation ],
           '取り替える'             => [ :取り替える,             :replace ],
           '逆順'                   => [ :逆順,                   :reverse ],
           '逆順!'                  => [ :逆順!,                  :reverse! ],
           '逆順で個別に'           => [ :逆順で個別に,           :reverse_each ],
           '逆順で位置を取得'       => [ :逆順で位置を取得,       :rindex ],
           '回転させる'             => [ :回転させる,             :rotate ],
           '回転させる!'            => [ :回転させる!,            :rotate! ],
           '標本'                   => [ :標本,                   :sample ],
           '先頭から取り出す'       => [ :先頭から取り出す,       :shift ],
           '無作為に混ぜる'         => [ :無作為に混ぜる,         :shuffle ],
           '無作為に混ぜる!'        => [ :無作為に混ぜる!,        :shuffle! ],
           '断片'                   => [ :断片,                   :slice ],
           '断片!'                  => [ :断片!,                  :slice! ],
           '整列'                   => [ :整列,                   :sort ],
           '整列!'                  => [ :整列!,                  :sort! ],
           'この条件で整列!'        => [ :この条件で整列!,        :sort_by! ],
           '合計'                   => [ :合計,                   :sum ],
           '配列に変換'             => [ :配列に変換,             :to_a ],
           '連想配列に変換'         => [ :連想配列に変換,         :to_h ],
           '転置'                   => [ :転置,                   :transpose ],
           '和集合'                 => [ :和集合,                 :union ],
           '重複を削除'             => [ :重複を削除,             :uniq ],
           '重複を削除!'            => [ :重複を削除!,            :uniq! ],
           '位置で値の一覧を取得'   => [ :位置で値の一覧を取得,   :values_at ],
           'より合わせる'           => [ :より合わせる,           :zip ])
      試験('公開された操作の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        別名であることを確認(配列.新規, 日本語の別名, 元の名前)
        含まれることを確認(配列.生成物が持つ公開された操作の一覧, 日本語の別名)
      }
    }

    組(:連想配列の操作の試験, 原型: 試験単位::試験事例) {
      資料('可能なら変換' => [ :可能なら変換, :try_convert ])
      試験('特異操作の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        別名であることを確認(連想配列, 日本語の別名, 元の名前)
        含まれることを確認(連想配列.公開された操作の一覧, 日本語の別名)
      }

      資料('格納'                   => [ :格納,                   :store ],
           '連想取得'               => [ :連想取得,               :assoc ],
           '消去する'               => [ :消去する,               :clear ],
           '詰める'                 => [ :詰める,                 :compact ],
           '詰める!'                => [ :詰める!,                :compact! ],
           '同一性で比較する'       => [ :同一性で比較する,       :compare_by_identity ],
           '同一性で比較するか?'    => [ :同一性で比較するか?,    :compare_by_identity? ],
           '既定値'                 => [ :既定値,                 :default ],
           '既定値='                => [ :既定値=,                :default= ],
           '既定値の手続き'         => [ :既定値の手続き,         :default_proc ],
           '既定値の手続き='        => [ :既定値の手続き=,        :default_proc= ],
           '削除'                   => [ :削除,                   :delete ],
           '条件で削除'             => [ :条件で削除,             :delete_if ],
           '除く!'                  => [ :除く!,                  :reject! ],
           '探り当てる'             => [ :探り当てる,             :dig ],
           '個別に'                 => [ :個別に,                 :each ],
           '対毎に'                 => [ :対毎に,                 :each_pair ],
           'キー毎に'               => [ :キー毎に,               :each_key ],
           '値毎に'                 => [ :値毎に,                 :each_value ],
           '空か?'                  => [ :空か?,                  :empty? ],
           '取得'                   => [ :取得,                   :fetch ],
           '値の一覧を取得'         => [ :値の一覧を取得,         :fetch_values ],
           '選択する'               => [ :選択する,               :select ],
           '抽出する'               => [ :抽出する,               :filter ],
           '条件で残す'             => [ :条件で残す,             :keep_if ],
           '選択する!'              => [ :選択する!,              :select! ],
           '抽出する!'              => [ :抽出する!,              :filter! ],
           '平らにする'             => [ :平らにする,             :flatten ],
           'キーを持つか?'          => [ :キーを持つか?,          :has_key? ],
           '含むか?'                => [ :含むか?,                :include? ],
           'キーか?'                => [ :キーか?,                :key? ],
           '一員か?'                => [ :一員か?,                :member? ],
           '値を持つか?'            => [ :値を持つか?,            :has_value? ],
           '値か?'                  => [ :値か?,                  :value? ],
           'キーを取得'             => [ :キーを取得,             :key ],
           '位置を取得'             => [ :位置を取得,             :index ],
           '反転させる'             => [ :反転させる,             :invert ],
           'キーの一覧'             => [ :キーの一覧,             :keys ],
           '長さ'                   => [ :長さ,                   :length ],
           '大きさ'                 => [ :大きさ,                 :size ],
           '併合'                   => [ :併合,                   :merge ],
           '併合!'                  => [ :併合!,                  :merge! ],
           '更新'                   => [ :更新,                   :update ],
           '逆連想取得'             => [ :逆連想取得,             :rassoc ],
           'ハッシュ値を再計算する' => [ :ハッシュ値を再計算する, :rehash ],
           '除く'                   => [ :除く,                   :reject ],
           '取り替える'             => [ :取り替える,             :replace ],
           '先頭から取り出す'       => [ :先頭から取り出す,       :shift ],
           '断片'                   => [ :断片,                   :slice ],
           '配列に変換'             => [ :配列に変換,             :to_a ],
           '連想配列に変換'         => [ :連想配列に変換,         :to_h ],
           'キーの変換'             => [ :キーの変換,             :transform_keys ],
           'キーの変換!'            => [ :キーの変換!,            :transform_keys! ],
           '値の変換'               => [ :値の変換,               :transform_values ],
           '値の変換!'              => [ :値の変換!,              :transform_values! ],
           '値の一覧'               => [ :値の一覧,               :values ],
           '位置で値の一覧を取得'   => [ :位置で値の一覧を取得,   :values_at ])
      試験('公開された操作の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        別名であることを確認(連想配列.新規, 日本語の別名, 元の名前)
        含まれることを確認(連想配列.生成物が持つ公開された操作の一覧, 日本語の別名)
      }
    }

    組(:範囲の操作の試験, 原型: 試験単位::試験事例) {
      資料('間を進む'              => [ :間を進む,              :step ],
           '包含するか?'           => [ :包含するか?,           :cover? ],
           '始端'                  => [ :始端,                  :begin ],
           '先頭'                  => [ :先頭,                  :first ],
           '二分探索する'          => [ :二分探索する,          :bsearch ],
           '個別に'                => [ :個別に,                :each ],
           '終端'                  => [ :終端,                  :end ],
           '末尾'                  => [ :末尾,                  :last ],
           '終端が除かれているか?' => [ :終端が除かれているか?, :exclude_end? ],
           '含むか?'               => [ :含むか?,               :include? ],
           '一員か?'               => [ :一員か?,               :member? ],
           '最大'                  => [ :最大,                  :max ],
           '最小'                  => [ :最小,                  :min ],
           '大きさ'                => [ :大きさ,                :size ])
      試験('公開された操作の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        別名であることを確認(範囲.新規('a', 'z'), 日本語の別名, 元の名前)
        含まれることを確認(範囲.生成物が持つ公開された操作の一覧, 日本語の別名)
      }
    }

    組(:構造体の操作の試験, 原型: 試験単位::試験事例) {
      試験('特異操作の項目の一覧を確認') {
        発生した例外 = 例外が発生することを確認(操作が無いため失敗) {
          構造体.項目の一覧
        }
        一致することを確認(/undefined/, 発生した例外.伝文)
        一致することを確認(/method/, 発生した例外.伝文)
        一致することを確認(/members/, 発生した例外.伝文)

        ある構造体 = 構造体.新規(:甲, :乙, :丙)
        等しいことを確認([ :甲, :乙, :丙 ], ある構造体.項目の一覧)
      }

      資料('探り当てる'           => [ :探り当てる,           :dig ],
           '個別に'               => [ :個別に,               :each ],
           '対毎に'               => [ :対毎に,               :each_pair ],
           '選択する'             => [ :選択する,             :select ],
           '抽出する'             => [ :抽出する,             :filter ],
           '長さ'                 => [ :長さ,                 :length ],
           '大きさ'               => [ :大きさ,               :size ],
           '項目の一覧'           => [ :項目の一覧,           :members ],
           '値の一覧'             => [ :値の一覧,             :values ],
           '配列に変換'           => [ :配列に変換,           :to_a ],
           '連想配列に変換'       => [ :連想配列に変換,       :to_h ],
           '位置で値の一覧を取得' => [ :位置で値の一覧を取得, :values_at ])
      試験('公開された操作の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        別名であることを確認(構造体.新規(:試験).新規, 日本語の別名, 元の名前)
        含まれることを確認(構造体.生成物が持つ公開された操作の一覧, 日本語の別名)
      }
    }
  }
}

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
