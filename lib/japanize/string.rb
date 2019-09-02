# -*- coding: utf-8 -*-

require 'japanize/core'

要求 'japanize/base'
要求 'japanize/names'

組(文字列) {
  特異組{
    別名 :可能なら変換, :try_convert
  }

  別名 :連結,                                :concat
  別名 :断片,                                :slice
  別名 :アスキー文字のみか?,                 :ascii_only?
  別名 :バイナリ文字列,                      :b
  別名 :バイト値の一覧,                      :bytes
  別名 :バイト長,                            :bytesize
  別名 :バイトの断片,                        :byteslice
  別名 :先頭を大文字にする,                  :capitalize
  別名 :先頭を大文字にする!,                 :capitalize!
  別名 :大文字と小文字を無視して比較する,    :casecmp
  別名 :大文字と小文字を無視して一致するか?, :casecmp?
  別名 :中央寄せ,                            :center
  別名 :文字の一覧,                          :chars
  別名 :末尾を食べる,                        :chomp
  別名 :末尾を食べる!,                       :chomp!
  別名 :末尾を切り落す,                      :chop
  別名 :末尾を切り落す!,                     :chop!
  別名 :文字,                                :chr
  別名 :消去する,                            :clear
  別名 :符号点の一覧,                        :codepoints
  別名 :数える,                              :count
  別名 :暗号化,                              :crypt
  別名 :削除,                                :delete
  別名 :削除!,                               :delete!
  別名 :接頭辞を削除,                        :delete_prefix
  別名 :接頭辞を削除!,                       :delete_prefix!
  別名 :接尾辞を削除,                        :delete_suffix
  別名 :接尾辞を削除!,                       :delete_suffix!
  別名 :小文字にする,                        :downcase
  別名 :小文字にする!,                       :downcase!
  別名 :特殊文字を可視化する,                :dump
  別名 :バイト値毎に,                        :each_byte
  別名 :文字毎に,                            :each_char
  別名 :符号点毎に,                          :each_codepoint
  別名 :書記素クラスタ毎に,                  :each_grapheme_cluster
  別名 :行毎に,                              :each_line
  別名 :空か?,                               :empty?
  別名 :文字符号化方式を変換,                :encode
  別名 :文字符号化方式を変換!,               :encode!
  別名 :文字符号化方式,                      :encoding
  別名 :末尾が一致するか?,                   :end_with?
  # 別名 :等しいか?,                         :eql?       # 物で定義済み
  別名 :文字符号化方式を強制する,            :force_encoding
  別名 :バイト値を取得,                      :getbyte
  別名 :書記素クラスタの一覧,                :grapheme_clusters
  別名 :全置換,                              :gsub
  別名 :全置換!,                             :gsub!
  # 別名 :ハッシュ値,                        :hash       # 物で定義済み
  別名 :十六進数,                            :hex
  別名 :含むか?,                             :include?
  別名 :位置を取得,                          :index
  別名 :挿入,                                :insert
  # 別名 :検査,                              :inspect    # 物で定義済み
  別名 :記号化,                              :intern
  別名 :記号に変換,                          :to_sym
  別名 :長さ,                                :length
  別名 :大きさ,                              :size
  別名 :行の一覧,                            :lines
  別名 :左寄せ,                              :ljust
  別名 :左側の空白を削る,                    :lstrip
  別名 :左側の空白を削る!,                   :lstrip!
  別名 :一致,                                :match
  別名 :一致するか?,                         :match?
  別名 :一つ後,                              :succ
  別名 :次の値,                              :next
  別名 :一つ後!,                             :succ!
  別名 :次の値!,                             :next!
  別名 :八進数,                              :oct
  別名 :文字符号値,                          :ord
  別名 :分ける,                              :partition
  別名 :先頭に連結,                          :prepend
  別名 :取り替える,                          :replace
  別名 :逆順,                                :reverse
  別名 :逆順!,                               :reverse!
  別名 :逆順で位置を取得,                    :rindex
  別名 :右寄せ,                              :rjust
  別名 :末尾から分ける,                      :rpartition
  別名 :右側の空白を削る,                    :rstrip
  別名 :右側の空白を削る!,                   :rstrip!
  別名 :走査,                                :scan
  別名 :不正なバイト列を置換,                :scrub
  別名 :不正なバイト列を置換!,               :scrub!
  別名 :バイト値を設定,                      :setbyte
  別名 :断片!,                               :slice!
  別名 :分割,                                :split
  別名 :縮合,                                :squeeze
  別名 :縮合!,                               :squeeze!
  別名 :先頭が一致するか?,                   :start_with?
  別名 :空白を削る,                          :strip
  別名 :空白を削る!,                         :strip!
  別名 :置換,                                :sub
  別名 :置換!,                               :sub!
  別名 :検査合計,                            :sum
  別名 :大文字と小文字を逆転させる,          :swapcase
  別名 :大文字と小文字を逆転させる!,         :swapcase!
  別名 :複素数に変換,                        :to_c
  別名 :浮動小数点に変換,                    :to_f
  別名 :整数に変換,                          :to_i
  別名 :有理数に変換,                        :to_r
  # 別名 :文字列に変換,                      :to_s    # 物で定義済み
  別名 :文字を置換,                          :tr
  別名 :文字を置換!,                         :tr!
  別名 :文字を置換して縮合,                  :tr_s
  別名 :文字を置換して縮合!,                 :tr_s!
  別名 :特殊文字を不可視化する,              :undump
  別名 :ユニコードを正規化する,              :unicode_normalize
  別名 :ユニコードを正規化する!,             :unicode_normalize!
  別名 :ユニコードが正規化されているか?,     :unicode_normalized?
  別名 :情報を開梱,                          :unpack
  別名 :一個の情報を開梱,                    :unpack1
  別名 :大文字にする,                        :upcase
  別名 :大文字にする!,                       :upcase!
  別名 :昇順,                                :upto
  別名 :文字符号化方式が妥当か?,             :valid_encoding?
}

組(記号) {
  特異組{
    別名 :全ての記号の一覧, :all_symbols
  }

  別名 :断片,                                :slice
  別名 :先頭を大文字にする,                  :capitalize
  別名 :大文字と小文字を無視して比較する,    :casecmp
  別名 :大文字と小文字を無視して一致するか?, :casecmp?
  別名 :小文字にする,                        :downcase
  別名 :空か?,                               :empty?
  別名 :文字符号化方式,                      :encoding
  別名 :識別番号を名前に変換,                :id2name
  # 別名 :文字列に変換,                      :to_s       # 物で定義済み
  # 別名 :検査,                              :inspect    # 物で定義済み
  別名 :記号化,                              :intern
  別名 :記号に変換,                          :to_sym
  別名 :長さ,                                :length
  別名 :大きさ,                              :size
  別名 :一致,                                :match
  別名 :一致するか?,                         :match?
  別名 :一つ後,                              :succ
  別名 :次の値,                              :next
  別名 :大文字と小文字を逆転させる,          :swapcase
  別名 :手続きに変換,                        :to_proc
  別名 :大文字にする,                        :upcase
}

組(文字符号化方式) {
  特異組{
    別名 :別名の一覧,                     :aliases
    別名 :互換性はあるか?,                :compatible?
    別名 :既定の外部文字符号化方式,       :default_external
    別名 :既定の外部文字符号化方式=,      :default_external=
    別名 :既定の内部文字符号化方式,       :default_internal
    別名 :既定の内部文字符号化方式=,      :default_internal=
    別名 :見つける,                       :find
    別名 :一覧,                           :list
    別名 :ロケールの文字集合記述ファイル, :locale_charmap
    別名 :名前の一覧,                     :name_list
  }

  別名 :アスキー互換か?, :ascii_compatible?
  別名 :見せかけか?,     :dummy?
  # 別名 :検査,          :inspect    # 物で定義済み
  別名 :名前,            :name
  # 別名 :文字列に変換,  :to_s       # 物で定義済み
  別名 :名前の一覧,      :names
  別名 :写し取る,        :replicate

  # 各文字符号化方式の定数は固有名詞なので日本語化しない

  組(変換器) {
    特異組{
      別名 :アスキー互換の文字符号化方式, :asciicompat_encoding
      別名 :変換の経路を探索する,         :search_convpath
    }

    別名 :変換する,               :convert
    別名 :変換の経路,             :convpath
    別名 :変換先の文字符号化方式, :destination_encoding
    別名 :終了する,               :finish
    別名 :出力結果に挿入する,     :insert_output
    # 別名 :検査,                 :inspect    # 物で定義済み
    別名 :最後の失敗,             :last_error
    別名 :低水準の変換,           :primitive_convert
    別名 :低水準の失敗情報,       :primitive_errinfo
    別名 :元に返す,               :putback
    別名 :置換文字,               :replacement
    別名 :置換文字=,              :replacement=
    別名 :変換元の文字符号化方式, :source_encoding
  }
}

組(正規表現) {
  特異組{
    別名 :翻訳,               :compile
    別名 :特殊文字を無効化,   :escape
    別名 :引用,               :quote
    別名 :最後に一致した結果, :last_match
    別名 :可能なら変換,       :try_convert
    別名 :和集合,             :union
  }

  # 別名 :等しいか?,                       :eql?       # 物で定義済み
  別名 :大文字と小文字を無視するか?,       :casefold?
  別名 :文字符号化方式,                    :encoding
  別名 :文字符号化方式が限定されているか?, :fixed_encoding?
  # 別名 :ハッシュ値,                      :hash       # 物で定義済み
  # 別名 :検査,                            :inspect    # 物で定義済み
  別名 :一致,                              :match
  別名 :一致するか?,                       :match?
  別名 :名前付き捕捉対象の一覧,            :named_captures
  別名 :名前の一覧,                        :names
  別名 :選択肢の一覧,                      :options
  別名 :元の文字列,                        :source
  # 別名 :文字列に変換,                    :to_s       # 物で定義済み

  日本語の定数 :空白を無視,           Regexp::EXTENDED
  日本語の定数 :文字符号化方式を限定, Regexp::FIXEDENCODING
  日本語の定数 :大文字と小文字を無視, Regexp::IGNORECASE
  日本語の定数 :複数行に対応,         Regexp::MULTILINE
  日本語の定数 :文字符号化方式を無視, Regexp::NOENCODING
}

組(正規表現が一致した結果) {
  別名 :開始する位置,           :begin
  別名 :捕捉対象の一覧,         :captures
  別名 :終了する位置,           :end
  # 別名 :ハッシュ値,           :hash       # 物で定義済み
  # 別名 :検査,                 :inspect    # 物で定義済み
  別名 :長さ,                   :length
  別名 :大きさ,                 :size
  別名 :名前付き捕捉対象の一覧, :named_captures
  別名 :名前の一覧,             :names
  別名 :開始と終了の位置,       :offset
  別名 :後続する文字列,         :post_match
  別名 :先行する文字列,         :pre_match
  別名 :一致した正規表現,       :regexp
  別名 :対象の文字列,           :string
  別名 :配列に変換,             :to_a
  # 別名 :文字列に変換,         :to_s       # 物で定義済み
  別名 :位置で値の一覧を取得,   :values_at
}

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
