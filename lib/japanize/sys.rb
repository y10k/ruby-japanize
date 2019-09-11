# -*- coding: utf-8 -*-

require 'japanize/core'

要求 'japanize/base'
要求 'japanize/names'

組(束縛) {
  別名 :評価,                  :eval
  別名 :対話操作を開始,        :irb
  別名 :局所変数は定義済みか?, :local_variable_defined?
  別名 :局所変数を取得,        :local_variable_get
  別名 :局所変数を設定,        :local_variable_set
  別名 :局所変数の一覧,        :local_variables
  別名 :受信先,                :receiver
  別名 :元の場所,              :source_location
}

組(手続き型) {
  別名 :呼ぶ,           :call
  別名 :委ねる,         :yield
  別名 :項数,           :arity
  別名 :束縛を取得,     :binding
  別名 :カリー化,       :curry
  # 別名 :ハッシュ値,   :hash    # 物で定義済み
  # 別名 :文字列に変換, :to_s    # 物で定義済み
  # 別名 :検査,         :inspect # 物で定義済み
  別名 :λか?,          :lambda?
  別名 :引数の一覧,     :parameters
  別名 :元の場所,       :source_location
}

組(操作) {
  # 別名 :等しいか?,        :eql?    # 物で定義済み
  別名 :呼ぶ,               :call
  別名 :項数,               :arity
  # 別名 :複写,             :clone   # 物で定義済み
  別名 :カリー化,           :curry
  # 別名 :ハッシュ値,       :hash    # 物で定義済み
  # 別名 :検査,             :inspect # 物で定義済み
  # 別名 :文字列に変換,     :to_s    # 物で定義済み
  別名 :名前,               :name
  別名 :元の名前,           :original_name
  別名 :所属,               :owner
  別名 :引数の一覧,         :parameters
  別名 :受信先,             :receiver
  別名 :元の場所,           :source_location
  別名 :原型の操作,         :super_method
  別名 :未束縛の操作を取得, :unbind
}

組(未束縛の操作) {
  # 別名 :等しいか?,    :eql?    # 物で定義済み
  別名 :項数,           :arity
  別名 :束縛,           :bind
  # 別名 :複写,         :clone   # 物で定義済み
  # 別名 :ハッシュ値,   :hash    # 物で定義済み
  # 別名 :検査,         :inspect # 物で定義済み
  # 別名 :文字列に変換, :to_s    # 物で定義済み
  別名 :名前,           :name
  別名 :元の名前,       :original_name
  別名 :所属,           :owner
  別名 :引数の一覧,     :parameters
  別名 :元の場所,       :source_location
  別名 :原型の操作,     :super_method
}

部(物の空間) {
  別名 :_識別番号から参照を取得, :_id2ref
  別名 :物を数える,              :count_objects
  別名 :最終処理を定義,          :define_finalizer
  別名 :物毎に,                  :each_object
  別名 :ゴミを集める,            :garbage_collect
  別名 :最終処理を解除,          :undefine_finalizer

  部の関数 :_識別番号から参照を取得,
           :物を数える,
           :最終処理を定義,
           :物毎に,
           :ゴミを集める,
           :最終処理を解除

  組(弱参照の連想配列) {
    別名 :大きさ,     :size
    別名 :長さ,       :length
    別名 :キーの一覧, :keys
    別名 :値の一覧,   :values
    別名 :キーか?,    :key?
    別名 :含むか?,    :include?
    別名 :一員か?,    :member?
    別名 :キー毎に,   :each_key
    別名 :値毎に,     :each_value
    別名 :対毎に,     :each_pair
    # 別名 :検査,     :inspect # 物で定義済み
  }
}

組(発生事象の追跡) {
  特異組{
    別名 :状態を取得, :stat
    別名 :追跡,       :trace
  }

  別名 :束縛を取得,         :binding
  別名 :呼び出し先の識別子, :callee_id
  別名 :定義されている組,   :defined_class
  別名 :無効にする,         :disable
  別名 :有効にする,         :enable
  別名 :有効か?,            :enabled?
  別名 :事象,               :event
  # 別名 :検査,             :inspect    # 物で定義済み
  別名 :行番号,             :lineno
  別名 :操作の識別子,       :method_id
  別名 :ファイルへの経路,   :path
  別名 :発生した例外,       :raised_exception
  別名 :戻り値,             :return_value
  別名 :参照を取得,         :self
}

部(ゴミ集め) {
  特異組{
    別名 :実行した回数,         :count
    別名 :無効にする,           :disable
    別名 :有効にする,           :enable
    別名 :最新のゴミ集めの情報, :latest_gc_info
    別名 :開始,                 :start
    別名 :統計情報を取得,       :stat
    別名 :頻繁に実施,           :stress
    別名 :頻繁に実施=,          :stress=
  }

  別名 :ゴミを集める, :garbage_collect

  日本語の定数 :内部の定数の一覧,   GC::INTERNAL_CONSTANTS
  日本語の定数 :既定の選択肢の一覧, GC::OPTS

  部(統計情報) {
    特異組{
      別名 :消去する,     :clear
      別名 :無効にする,   :disable
      別名 :有効にする,   :enable
      別名 :有効か?,      :enabled?
      別名 :集計前の情報, :raw_data
      別名 :報告する,     :report
      別名 :結果,         :result
      別名 :総計時間,     :total_time
    }
  }

  日本語の定数を付加できること :内部の定数の一覧,
                               :既定の選択肢の一覧,
                               :統計情報
}

部(直列化) {
  別名 :書き出す, :dump
  別名 :読み込む, :load
  別名 :復元する, :restore

  部の関数 :書き出す,
           :読み込む,
           :復元する

  日本語の定数 :主改訂版数, Marshal::MAJOR_VERSION
  日本語の定数 :副改訂版数, Marshal::MINOR_VERSION

  日本語の定数を付加できること :主改訂版数,
                               :副改訂版数
}

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
