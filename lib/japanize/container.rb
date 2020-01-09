# -*- coding: utf-8 -*-

require 'japanize/core'

要求 'japanize/base'
要求 'japanize/names'

組(配列) {
  特異組{
    別名 :可能なら変換, :try_convert
  }

  別名 :全てにおいて成り立つか?, :all?
  別名 :何れかが成り立つか?,     :any?
  別名 :位置,                    :at
  別名 :付け足す,                :push
  別名 :連想取得,                :assoc
  別名 :二分探索する,            :bsearch
  別名 :二分探索して位置を返す,  :bsearch_index
  別名 :消去する,                :clear
  # 別名 :複写,                  :clone   # 物で定義済み
  # 別名 :複製,                  :dup     # 物で定義済み
  別名 :集める,                  :collect
  別名 :集める!,                 :collect!
  別名 :数える,                  :count
  別名 :捨てる,                  :drop
  別名 :この条件で捨てる,        :drop_while
  別名 :対応させる,              :map
  別名 :対応させる!,             :map!
  別名 :組み合わせ,              :combination
  別名 :詰める,                  :compact
  別名 :詰める!,                 :compact!
  別名 :連結,                    :concat
  別名 :循環させる,              :cycle
  別名 :分解,                    :deconstruct if (公開された操作は定義済みか? :deconstruct, 偽値)
  別名 :削除,                    :delete
  別名 :位置で削除,              :delete_at
  別名 :条件で削除,              :delete_if
  別名 :除く!,                   :reject!
  別名 :差分,                    :difference
  別名 :探り当てる,              :dig
  別名 :個別に,                  :each
  別名 :添字毎に,                :each_index
  別名 :空か?,                   :empty?
  # 別名 :等しいか?,             :eql?    # 物で定義済み
  別名 :取得,                    :fetch
  別名 :満たす,                  :fill
  別名 :抽出する,                :filter
  別名 :選択する,                :select
  別名 :抽出する!,               :filter!
  別名 :選択する!,               :select!
  別名 :見つけたら位置を返す,    :find_index
  別名 :位置を取得,              :index
  別名 :交叉,                    :intersection if (公開された操作は定義済みか? :intersection, 偽値)
  別名 :先頭,                    :first
  別名 :平らにする,              :flatten
  別名 :平らにする!,             :flatten!
  # 別名 :ハッシュ値,            :hash    # 物で定義済み
  別名 :含むか?,                 :include?
  別名 :挿入,                    :insert
  # 別名 :検査,                  :inspect # 物で定義済み
  # 別名 :文字列に変換,          :to_s    # 物で定義済み
  別名 :結合,                    :join
  別名 :条件で残す,              :keep_if
  別名 :末尾,                    :last
  別名 :長さ,                    :length
  別名 :大きさ,                  :size
  別名 :最大,                    :max
  別名 :最小,                    :min
  別名 :最小と最大,              :minmax if (公開された操作は定義済みか? :minmax, 偽値)
  別名 :何れも成り立たないか?,   :none?
  別名 :一つだけ成り立つか?,     :one?
  別名 :情報を梱包,              :pack
  別名 :順列,                    :permutation
  別名 :取り出す,                :pop
  別名 :先頭に付け足す,          :unshift
  別名 :直積,                    :product
  別名 :逆連想取得,              :rassoc
  別名 :除く,                    :reject
  別名 :組み合わせを繰り返す,    :repeated_combination
  別名 :順列を繰り返す,          :repeated_permutation
  別名 :取り替える,              :replace
  別名 :逆順,                    :reverse
  別名 :逆順!,                   :reverse!
  別名 :逆順で個別に,            :reverse_each
  別名 :逆順で位置を取得,        :rindex
  別名 :回転させる,              :rotate
  別名 :回転させる!,             :rotate!
  別名 :標本,                    :sample
  別名 :先頭から取り出す,        :shift
  別名 :無作為に混ぜる,          :shuffle
  別名 :無作為に混ぜる!,         :shuffle!
  別名 :断片,                    :slice
  別名 :断片!,                   :slice!
  別名 :整列,                    :sort
  別名 :整列!,                   :sort!
  別名 :この条件で整列!,         :sort_by!
  別名 :合計,                    :sum
  別名 :引き出す,                :take
  別名 :この条件で引き出す,      :take_while
  別名 :配列に変換,              :to_a
  別名 :連想配列に変換,          :to_h
  別名 :転置,                    :transpose
  別名 :和集合,                  :union
  別名 :重複を削除,              :uniq
  別名 :重複を削除!,             :uniq!
  別名 :位置で値の一覧を取得,    :values_at
  別名 :より合わせる,            :zip
}

組(連想配列) {
  特異組{
    別名 :可能なら変換, :try_convert
  }

  別名 :何れかが成り立つか?,    :any?
  # 別名 :等しいか?,            :eql?       # 物で定義済み
  別名 :格納,                   :store
  別名 :連想取得,               :assoc
  別名 :消去する,               :clear
  # 別名 :複写,                 :clone      # 物で定義済み
  # 別名 :複製,                 :dup        # 物で定義済み
  別名 :詰める,                 :compact
  別名 :詰める!,                :compact!
  別名 :同一性で比較する,       :compare_by_identity
  別名 :同一性で比較するか?,    :compare_by_identity?
  別名 :キーで分解,             :deconstruct_keys if (公開された操作は定義済みか? :deconstruct_keys, 偽値)
  別名 :既定値,                 :default
  別名 :既定値=,                :default=
  別名 :既定値の手続き,         :default_proc
  別名 :既定値の手続き=,        :default_proc=
  別名 :削除,                   :delete
  別名 :条件で削除,             :delete_if
  別名 :除く!,                  :reject!
  別名 :探り当てる,             :dig
  別名 :個別に,                 :each
  別名 :対毎に,                 :each_pair
  別名 :キー毎に,               :each_key
  別名 :値毎に,                 :each_value
  別名 :空か?,                  :empty?
  # 別名 :同一か?,              :equal?     # 物の土台で定義済み
  別名 :取得,                   :fetch
  別名 :値の一覧を取得,         :fetch_values
  別名 :選択する,               :select
  別名 :抽出する,               :filter
  別名 :条件で残す,             :keep_if
  別名 :選択する!,              :select!
  別名 :抽出する!,              :filter!
  別名 :平らにする,             :flatten
  別名 :キーを持つか?,          :has_key?
  別名 :含むか?,                :include?
  別名 :キーか?,                :key?
  別名 :一員か?,                :member?
  別名 :値を持つか?,            :has_value?
  別名 :値か?,                  :value?
  # 別名 :ハッシュ値,           :hash       # 物で定義済み
  別名 :キーを取得,             :key
  別名 :位置を取得,             :index
  # 別名 :文字列に変換,         :to_s       # 物で定義済み
  # 別名 :検査,                 :inspect    # 物で定義済み
  別名 :反転させる,             :invert
  別名 :キーの一覧,             :keys
  別名 :長さ,                   :length
  別名 :大きさ,                 :size
  別名 :併合,                   :merge
  別名 :併合!,                  :merge!
  別名 :更新,                   :update
  別名 :逆連想取得,             :rassoc
  別名 :ハッシュ値を再計算する, :rehash
  別名 :除く,                   :reject
  別名 :取り替える,             :replace
  別名 :先頭から取り出す,       :shift
  別名 :断片,                   :slice
  別名 :配列に変換,             :to_a
  別名 :連想配列に変換,         :to_h
  別名 :キーの変換,             :transform_keys
  別名 :キーの変換!,            :transform_keys!
  別名 :値の変換,               :transform_values
  別名 :値の変換!,              :transform_values!
  別名 :値の一覧,               :values
  別名 :位置で値の一覧を取得,   :values_at
}

組(範囲) {
  別名 :間を進む,              :step
  別名 :包含するか?,           :cover?
  別名 :数える,                :count if (公開された操作は定義済みか? :count, 偽値)
  別名 :始端,                  :begin
  別名 :先頭,                  :first
  別名 :二分探索する,          :bsearch
  別名 :個別に,                :each
  別名 :終端,                  :end
  別名 :末尾,                  :last
  # 別名 :等しいか?,           :eql?       # 物で定義済み
  別名 :終端が除かれているか?, :exclude_end?
  # 別名 :ハッシュ値,          :hash       # 物で定義済み
  別名 :含むか?,               :include?
  別名 :一員か?,               :member?
  # 別名 :検査,                :inspect    # 物で定義済み
  別名 :最大,                  :max
  別名 :最小,                  :min
  別名 :最小と最大,            :minmax if (公開された操作は定義済みか? :minmax, 偽値)
  別名 :大きさ,                :size
  別名 :配列に変換,            :to_a
  別名 :要素の一覧,            :entries
  # 別名 :文字列に変換,        :to_s       # 物で定義済み
}

組(構造体) {
  特異組{
    定義(:項目の一覧) { self.members }    # membersは継承先で定義されるためここでは未定義なので別名にしない
  }

  別名 :分解,                 :deconstruct if (公開された操作は定義済みか? :deconstruct, 偽値)
  別名 :キーで分解,           :deconstruct_keys if (公開された操作は定義済みか? :deconstruct_keys, 偽値)
  別名 :探り当てる,           :dig
  別名 :個別に,               :each
  別名 :対毎に,               :each_pair
  # 別名 :等しいか?,          :eql?       # 物で定義済み
  # 別名 :同一か?,            :equal?     # 物の土台で定義済み
  別名 :選択する,             :select
  別名 :抽出する,             :filter
  # 別名 :ハッシュ値,         :hash       # 物で定義済み
  # 別名 :検査,               :inspect    # 物で定義済み
  # 別名 :文字列に変換,       :to_s       # 物で定義済み
  別名 :長さ,                 :length
  別名 :大きさ,               :size
  別名 :項目の一覧,           :members
  別名 :値の一覧,             :values
  別名 :配列に変換,           :to_a
  別名 :連想配列に変換,       :to_h
  別名 :位置で値の一覧を取得, :values_at
}

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
