# -*- coding: utf-8 -*-

require 'japanize/core'

要求 'japanize/base'
要求 'japanize/names'

組(配置の失敗) {
  別名 :ファイルへの経路, :path
}

組(シグナルの例外) {
  別名 :シグナルの名前, :signm
  別名 :シグナルの番号, :signo
}

組(脱出を捕捉できないため失敗) {
  別名 :目印,           :tag
  別名 :値,             :value
  # 別名 :文字列に変換, :to_s    # 物で定義済み
}

組(キーの照合に失敗) {
  別名 :キー,   :key
  別名 :受信先, :receiver
}

組(繰り返しの停止) {
  別名 :結果, :result
}

組(局所的な跳躍に失敗) {
  別名 :終了値, :exit_value
  別名 :原因,   :reason
}

組(名前解決に失敗) {
  別名 :局所変数の一覧, :local_variables
  別名 :名前,           :name
  別名 :受信先,         :receiver
  # 別名 :文字列に変換, :to_s    # 物で定義済み
}

組(操作が無いため失敗) {
  別名 :引数,                    :args
  別名 :秘密の形式で呼ばれたか?, :private_call?
}

組(凍結済みのため失敗) {
  別名 :受信先, :receiver if (公開された操作は定義済みか? :receiver, 偽値)
}

組(システムコールの失敗) {
  別名 :失敗の種類を表す番号, :errno
}

Errno.定数の一覧.grep(/\A E[A-Z0-9]+ \z/x).map{|名前|
  Errno.定数を取得(名前)
}.select{|ある失敗|
  ある失敗 < システムコールの失敗
}.uniq.each do |あるシステムコールの失敗|
  組(あるシステムコールの失敗) {
    日本語の定数 :失敗の種類を表す番号, あるシステムコールの失敗::Errno
  }
end

組(システムの終了) {
  別名 :状態,        :status
  別名 :成功したか?, :success?
}

組(文字符号化方式::バイト列が不正なため失敗) {
  別名 :変換先の文字符号化方式,       :destination_encoding
  別名 :変換先の文字符号化方式の名前, :destination_encoding_name
  別名 :不正なバイト列,               :error_bytes
  別名 :入力が不完全か?,              :incomplete_input?
  別名 :読み直すバイト列,             :readagain_bytes
  別名 :変換元の文字符号化方式,       :source_encoding
  別名 :変換元の文字符号化方式の名前, :source_encoding_name
}

組(文字符号化方式::変換後の文字が存在しないため失敗) {
  別名 :変換先の文字符号化方式,       :destination_encoding
  別名 :変換先の文字符号化方式の名前, :destination_encoding_name
  別名 :不正な文字,                   :error_char
  別名 :変換元の文字符号化方式,       :source_encoding
  別名 :変換元の文字符号化方式の名前, :source_encoding_name
}

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
