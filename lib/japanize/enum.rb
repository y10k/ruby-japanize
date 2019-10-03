# -*- coding: utf-8 -*-

require 'japanize/core'

要求 'japanize/base'
要求 'japanize/names'
要求 'japanize/syntax'

部(列挙できる) {
  別名 :全てにおいて成り立つか?,            :all?
  別名 :何れかが成り立つか?,                :any?
  別名 :連続した塊に分ける,                 :chunk
  別名 :この条件で連続した塊に分ける,       :chunk_while
  別名 :集める,                             :collect
  別名 :対応させる,                         :map
  別名 :対応させて平らにする,               :flat_map
  別名 :集めて連結する,                     :collect_concat
  別名 :数える,                             :count
  別名 :循環させる,                         :cycle
  別名 :見つける,                           :find
  別名 :捨てる,                             :drop
  別名 :この条件で捨てる,                   :drop_while
  別名 :区間毎に,                           :each_cons
  別名 :要素毎に,                           :each_entry
  別名 :断片毎に,                           :each_slice
  別名 :順番付きで個別に,                   :each_with_index
  別名 :覚え書き付きで個別に,               :each_with_object
  別名 :配列に変換,                         :to_a
  別名 :要素の一覧,                         :entries
  別名 :全て見つける,                       :find_all
  別名 :選択する,                           :select
  別名 :抽出する,                           :filter
  別名 :見つけたら位置を返す,               :find_index
  別名 :先頭,                               :first
  別名 :検索,                               :grep
  別名 :対象外を検索,                       :grep_v
  別名 :条件毎に集める,                     :group_by
  別名 :一員か?,                            :member?
  別名 :含むか?,                            :include?
  別名 :織り込む,                           :inject
  別名 :畳み込む,                           :reduce
  別名 :遅延評価,                           :lazy
  別名 :最大,                               :max
  別名 :この条件で最大,                     :max_by
  別名 :最小,                               :min
  別名 :この条件で最小,                     :min_by
  別名 :最小と最大,                         :minmax
  別名 :この条件で最小と最大,               :minmax_by
  別名 :何れも成り立たないか?,              :none?
  別名 :一つだけ成り立つか?,                :one?
  別名 :分ける,                             :partition
  別名 :除く,                               :reject
  別名 :逆順で個別に,                       :reverse_each
  別名 :この条件で終わる所で切り分ける,     :slice_after
  別名 :この条件で始まる所で切り分ける,     :slice_before
  別名 :この条件が成り立つ境界で切り分ける, :slice_when
  別名 :整列,                               :sort
  別名 :この条件で整列,                     :sort_by
  別名 :合計,                               :sum
  別名 :引き出す,                           :take
  別名 :この条件で引き出す,                 :take_while
  別名 :連想配列に変換,                     :to_h
  別名 :重複を削除,                         :uniq
  別名 :より合わせる,                       :zip
}

組(列挙) {
  別名 :個別に,                 :each
  別名 :与える,                 :feed
  別名 :次の値,                 :next
  別名 :次の値の一覧,           :next_values
  別名 :次の値を覗く,           :peek
  別名 :次の値の一覧を覗く,     :peek_values
  別名 :巻き戻す,               :rewind
  別名 :大きさ,                 :size
  別名 :順番付きで繰り返す,     :with_index
  別名 :覚え書き付きで繰り返す, :with_object

  組(等差数列) {
    別名 :初項,                  :begin
    別名 :始端,                  :begin        # 範囲#始端 との互換のため定義する
    別名 :個別に,                :each
    別名 :上界,                  :end
    別名 :終端,                  :end          # 範囲#終端 との互換のため定義する
    別名 :上界が除かれているか?, :exclude_end?
    別名 :終端が除かれているか?, :exclude_end? # 範囲#終端が除かれているか? との互換のため定義する
    別名 :先頭,                  :first
    # 別名 :ハッシュ値,          :hash         # 物で定義済み
    # 別名 :検査,                :inspect      # 物で定義済み
    別名 :末尾,                  :last
    別名 :大きさ,                :size
    別名 :公差,                  :step
  }

  組(遅延評価) {
    別名 :連続した塊に分ける,                 :chunk
    別名 :この条件で連続した塊に分ける,       :chunk_while
    別名 :対応させる,                         :map
    別名 :集める,                             :collect
    別名 :対応させて平らにする,               :flat_map
    別名 :集めて連結する,                     :collect_concat
    別名 :捨てる,                             :drop
    別名 :この条件で捨てる,                   :drop_while
    別名 :列挙に変換,                         :to_enum
    別名 :列挙する,                           :enum_for
    別名 :選択する,                           :select
    別名 :全て見つける,                       :find_all
    別名 :抽出する,                           :filter
    別名 :直ちに評価する,                     :force
    別名 :検索,                               :grep
    別名 :対象外を検索,                       :grep_v
    別名 :遅延評価,                           :lazy
    別名 :除く,                               :reject
    別名 :この条件で終わる所で切り分ける,     :slice_after
    別名 :この条件で始まる所で切り分ける,     :slice_before
    別名 :この条件が成り立つ境界で切り分ける, :slice_when
    別名 :引き出す,                           :take
    別名 :この条件で引き出す,                 :take_while
    別名 :重複を削除,                         :uniq
    別名 :より合わせる,                       :zip
  }
}

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
