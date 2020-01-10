# -*- coding: utf-8 -*-

require 'japanize/core'

要求 'japanize/base'
要求 'japanize/names'

$配置対象の探索経路.特異組{
  別名 :機能への経路を解決する, :resolve_feature_path if (公開された操作は定義済みか? :resolve_feature_path, 偽値)
}

組(スクリプトの入力.生成元) {
  別名 :スクリプトの引数,         :argv
  別名 :バイナリ形式,             :binmode
  別名 :バイナリ形式か?,          :binmode?
  別名 :閉じる,                   :close
  別名 :閉じたか?,                :closed?
  別名 :個別に,                   :each
  別名 :行毎に,                   :each_line
  別名 :バイト値毎に,             :each_byte
  別名 :文字毎に,                 :each_char
  別名 :符号点毎に,               :each_codepoint
  別名 :終端,                     :eof
  別名 :終端か?,                  :eof?
  別名 :外部文字符号化方式,       :external_encoding
  別名 :ファイル,                 :file
  別名 :ファイル名,               :filename
  別名 :ファイルへの経路,         :path
  別名 :ファイル記述子,           :fileno
  別名 :整数に変換,               :to_i
  別名 :バイト値を取得,           :getbyte
  別名 :文字を取得,               :getc
  別名 :行を取得,                 :gets
  別名 :書き換えの形式,           :inplace_mode
  別名 :書き換えの形式=,          :inplace_mode=
  # 別名 :文字列に変換,           :to_s       # 物で定義済み
  # 別名 :検査,                   :inspect    # 物で定義済み
  別名 :内部文字符号化方式,       :internal_encoding
  別名 :行番号,                   :lineno
  別名 :行番号=,                  :lineno=
  別名 :位置を告げよ,             :tell
  別名 :位置,                     :pos
  別名 :位置=,                    :pos=
  別名 :印字,                     :print
  別名 :整形して印字,             :printf
  別名 :文字を出力,               :putc
  別名 :行を出力,                 :puts
  別名 :読む,                     :read
  別名 :遮られずに読む,           :read_nonblock
  別名 :バイト値を読む,           :readbyte
  別名 :文字を読む,               :readchar
  別名 :行を読む,                 :readline
  別名 :全行を読む,               :readlines
  別名 :配列に変換,               :to_a
  別名 :準備された分だけ読む,     :readpartial
  別名 :巻き戻す,                 :rewind
  別名 :移動,                     :seek
  別名 :文字符号化方式を設定,     :set_encoding
  別名 :次のファイルに進む,       :skip
  別名 :入出力に変換,             :to_io
  別名 :書き込み用の入出力に変換, :to_write_io
  別名 :書く,                     :write
}

環境変数.特異組{
  別名 :格納,                   :store
  別名 :連想取得,               :assoc
  別名 :消去する,               :clear
  別名 :削除,                   :delete
  別名 :条件で削除,             :delete_if
  # 別名 :凍結する,             :freeze     # 物で定義済み
  別名 :除く!,                  :reject!
  別名 :個別に,                 :each
  別名 :対毎に,                 :each_pair
  別名 :キー毎に,               :each_key
  別名 :値毎に,                 :each_value
  別名 :空か?,                  :empty?
  別名 :取得,                   :fetch
  別名 :選択する,               :select
  別名 :抽出する,               :filter
  別名 :条件で残す,             :keep_if
  別名 :選択する!,              :select!
  別名 :抽出する!,              :filter!
  別名 :キーを持つか?,          :has_key?
  別名 :含むか?,                :include?
  別名 :キーか?,                :key?
  別名 :一員か?,                :member?
  別名 :併合!,                  :merge! if (公開された操作は定義済みか? :merge!, 偽値)
  別名 :値を持つか?,            :has_value?
  別名 :値か?,                  :value?
  別名 :キーを取得,             :key
  別名 :位置を取得,             :index
  # 別名 :検査,                 :inspect    # 物で定義済み
  別名 :反転させる,             :invert
  別名 :キーの一覧,             :keys
  別名 :長さ,                   :length
  別名 :大きさ,                 :size
  別名 :逆連想取得,             :rassoc
  別名 :ハッシュ値を再計算する, :rehash
  別名 :除く,                   :reject
  別名 :取り替える,             :replace
  別名 :先頭から取り出す,       :shift
  別名 :断片,                   :slice
  別名 :配列に変換,             :to_a
  別名 :連想配列に変換,         :to_h
  # 別名 :文字列に変換,         :to_s       # 物で定義済み
  別名 :更新,                   :update
  別名 :値の一覧,               :values
  別名 :位置で値の一覧を取得,   :values_at
}

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
