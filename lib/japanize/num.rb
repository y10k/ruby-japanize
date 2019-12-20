# -*- coding: utf-8 -*-

require 'japanize/core'

要求 'japanize/base'
要求 'japanize/names'

組(数値) {
  別名 :剰余,             :modulo
  別名 :絶対値,           :abs
  別名 :絶対的な大きさ,   :magnitude
  別名 :絶対値の二乗,     :abs2
  別名 :偏角,             :arg
  別名 :角度,             :angle
  別名 :位相,             :phase
  別名 :切り上げ,         :ceil
  別名 :強制,             :coerce
  別名 :共役,             :conj
  別名 :複素共役,         :conjugate
  別名 :分母,             :denominator
  別名 :除法,             :div
  別名 :除算,             :divmod
  # 別名 :等しいか?,      :eql?    # 物で定義済み
  別名 :浮動小数点の除法, :fdiv
  別名 :有限か?,          :finite?
  別名 :切り下げ,         :floor
  別名 :虚数,             :i
  別名 :虚部,             :imaginary
  別名 :無限か?,          :infinite?
  別名 :整数か?,          :integer?
  別名 :負数か?,          :negative?
  別名 :非零か?,          :nonzero?
  別名 :分子,             :numerator
  別名 :極形式,           :polar
  別名 :極座標形式,       :polar
  別名 :正数か?,          :positive?
  別名 :商,               :quo
  別名 :実部,             :real
  別名 :実数か?,          :real?
  別名 :直交形式,         :rect
  別名 :直交座標形式,     :rectangular
  別名 :余り,             :remainder
  別名 :端数を丸める,     :round
  別名 :間を進む,         :step
  別名 :複素数に変換,     :to_c
  別名 :切り捨て,         :truncate
  別名 :零か?,            :zero?
}

組(整数) {
  特異組{
    別名 :平方根, :sqrt
  }

  別名 :剰余,                      :modulo
  別名 :冪乗,                      :pow
  別名 :除法,                      :div
  別名 :絶対値,                    :abs
  別名 :絶対的な大きさ,            :magnitude
  別名 :全てのビットが立つか?,     :allbits?
  別名 :何れかのビットが立つか?,   :anybits?
  別名 :ビット長,                  :bit_length
  別名 :切り上げ,                  :ceil
  別名 :文字,                      :chr
  別名 :強制,                      :coerce
  別名 :分母,                      :denominator
  別名 :位の数の一覧,              :digits
  別名 :除算,                      :divmod
  別名 :降順,                      :downto
  別名 :偶数か?,                   :even?
  別名 :浮動小数点の除法,          :fdiv
  別名 :切り下げ,                  :floor
  別名 :最大公約数,                :gcd
  別名 :最大公約数と最小公倍数,    :gcdlcm
  # 別名 :文字列に変換,            :to_s       # 物で定義済み
  # 別名 :検査,                    :inspect    # 物で定義済み
  別名 :整数か?,                   :integer?
  別名 :最小公倍数,                :lcm
  別名 :次の値,                    :next
  別名 :一つ後,                    :succ
  別名 :何れのビットも立たないか?, :nobits?
  別名 :分子,                      :numerator
  別名 :奇数か?,                   :odd?
  別名 :文字符号値,                :ord
  別名 :前の値,                    :pred
  別名 :有理化,                    :rationalize
  別名 :余り,                      :remainder
  別名 :端数を丸める,              :round
  別名 :大きさ,                    :size
  別名 :回,                        :times
  別名 :浮動小数点に変換,          :to_f
  別名 :整数に変換,                :to_i
  別名 :有理数に変換,              :to_r
  # 別名 :文字列に変換,            :to_s       # 物で定義済み
  別名 :切り捨て,                  :truncate
  別名 :昇順,                      :upto
}

組(有理数) {
  別名 :商,               :quo
  別名 :絶対値,           :abs
  別名 :絶対的な大きさ,   :magnitude
  別名 :切り上げ,         :ceil
  別名 :強制,             :coerce
  別名 :分母,             :denominator
  別名 :浮動小数点の除法, :fdiv
  別名 :切り下げ,         :floor
  # 別名 :ハッシュ値,     :hash    # 物で定義済み
  # 別名 :検査,           :inspect # 物で定義済み
  別名 :負数か?,          :negative?
  別名 :分子,             :numerator
  別名 :正数か?,          :positive?
  別名 :有理化,           :rationalize
  別名 :端数を丸める,     :round
  別名 :浮動小数点に変換, :to_f
  別名 :整数に変換,       :to_i
  別名 :切り捨て,         :truncate
  別名 :有理数に変換,     :to_r
  # 別名 :文字列に変換,   :to_s       # 物で定義済み
}

組(浮動小数点) {
  別名 :商,               :quo
  別名 :剰余,             :modulo
  別名 :絶対値,           :abs
  別名 :絶対的な大きさ,   :magnitude
  別名 :偏角,             :arg
  別名 :角度,             :angle
  別名 :位相,             :phase
  別名 :切り上げ,         :ceil
  別名 :強制,             :coerce
  別名 :分母,             :denominator
  別名 :除算,             :divmod
  # 別名 :等しいか?,      :eql?       # 物で定義済み
  別名 :浮動小数点の除法, :fdiv
  別名 :有限か?,          :finite?
  別名 :切り下げ,         :floor
  # 別名 :ハッシュ値,     :hash       # 物で定義済み
  別名 :無限か?,          :infinite?
  # 別名 :文字列に変換,   :to_s       # 物で定義済み
  # 別名 :検査,           :inspect    # 物で定義済み
  別名 :NaNか?,           :nan?       # NaN (Not a number)は専門用語なので日本語化しない。非数はあいまいさを含むのでNaNの訳語として適切ではない。
  別名 :負数か?,          :negative?
  別名 :次の浮動小数点,   :next_float
  別名 :分子,             :numerator
  別名 :正数か?,          :positive?
  別名 :前の浮動小数点,   :prev_float
  別名 :有理化,           :rationalize
  別名 :端数を丸める,     :round
  別名 :浮動小数点に変換, :to_f
  別名 :整数に変換,       :to_i
  別名 :切り捨て,         :truncate
  別名 :有理数に変換,     :to_r
  別名 :零か?,            :zero?

  日本語の定数 :十進桁数,             Float::DIG
  日本語の定数 :ε,                   Float::EPSILON
  日本語の定数 :無限大,               Float::INFINITY
  日本語の定数 :仮数部の桁数,         Float::MANT_DIG
  日本語の定数 :最大値,               Float::MAX
  日本語の定数 :指数部の十進の最大値, Float::MAX_10_EXP
  日本語の定数 :指数部の最大値,       Float::MAX_EXP
  日本語の定数 :最小値,               Float::MIN
  日本語の定数 :指数部の十進の最小値, Float::MIN_10_EXP
  日本語の定数 :指数部の最小値,       Float::MIN_EXP
  日本語の定数 :指数表現の基数,       Float::RADIX
  特異操作の定義(:丸め規則) { Float::ROUNDS } if (defined? Float::ROUNDS) # Ruby 2.7から非推奨
}

組(複素数) {
  操作を未定義にする :虚数
  操作を未定義にする :除法
  操作を未定義にする :除算
  操作を未定義にする :剰余
  操作を未定義にする :余り
  操作を未定義にする :切り上げ
  操作を未定義にする :切り下げ
  操作を未定義にする :切り捨て
  操作を未定義にする :端数を丸める
  操作を未定義にする :間を進む
  操作を未定義にする :正数か?
  操作を未定義にする :負数か?

  特異組{
    別名 :極形式,           :polar
    別名 :極座標形式,       :polar
    別名 :直交形式,         :rect
    別名 :直交座標形式,     :rectangular
  }

  別名 :商,               :quo
  別名 :絶対値,           :abs
  別名 :絶対的な大きさ,   :magnitude
  別名 :絶対値の二乗,     :abs2
  別名 :偏角,             :arg
  別名 :角度,             :angle
  別名 :位相,             :phase
  別名 :強制,             :coerce
  別名 :共役,             :conj
  別名 :複素共役,         :conjugate
  別名 :分母,             :denominator
  別名 :浮動小数点の除法, :fdiv
  別名 :有限か?,          :finite?
  # 別名 :ハッシュ値,     :hash       # 物で定義済み
  別名 :虚部,             :imaginary
  別名 :無限か?,          :infinite?
  # 別名 :検査,           :inspect    # 物で定義済み
  別名 :分子,             :numerator
  別名 :極形式,           :polar
  別名 :極座標形式,       :polar
  別名 :有理数に変換,     :to_r
  別名 :有理化,           :rationalize
  別名 :実部,             :real
  別名 :実数か?,          :real?
  別名 :直交形式,         :rect
  別名 :直交座標形式,     :rectangular
  別名 :複素数に変換,     :to_c
  別名 :浮動小数点に変換, :to_f
  別名 :整数に変換,       :to_i
  # 別名 :文字列に変換,   :to_s       # 物で定義済み

  日本語の定数 :虚数単位, Complex::I
}

組(疑似乱数生成器) {
  特異組{
    別名 :バイト列,           :bytes
    別名 :乱数の種を作る,     :new_seed
    別名 :乱数,               :rand
    別名 :乱数の種を設定,     :srand
    別名 :基盤が提供する乱数, :urandom
  }

  別名 :バイト列, :bytes
  別名 :乱数,     :rand
  別名 :乱数の種, :seed

  日本語の定数 :既定の乱数生成器, Random::DEFAULT

  部(書式) {
    別名 :乱数,       :rand
    別名 :乱数を取得, :random_number
  }
}

部(比較できる) {
  別名 :間に入るか?, :between?
  別名 :間に収める,  :clamp
}

組(複素数) {
  操作を未定義にする :間に入るか?
  操作を未定義にする :間に収める
}

部(数学) {
  別名 :逆余弦関数,                 :acos
  別名 :逆双曲線余弦関数,           :acosh
  別名 :逆正弦関数,                 :asin
  別名 :逆双曲線正弦関数,           :asinh
  別名 :逆正接関数,                 :atan
  別名 :逆正接関数2,                :atan2
  別名 :逆双曲線正接関数,           :atanh
  別名 :立方根,                     :cbrt
  別名 :余弦関数,                   :cos
  別名 :双曲線余弦関数,             :cosh
  別名 :誤差関数,                   :erf
  別名 :相補誤差関数,               :erfc
  別名 :指数関数,                   :exp
  別名 :浮動小数点の仮数部と指数部, :frexp
  別名 :Γ関数,                     :gamma
  別名 :斜辺,                       :hypot
  別名 :二の冪乗の乗算,             :ldexp
  別名 :対数Γ関数,                 :lgamma
  別名 :対数,                       :log
  別名 :常用対数,                   :log10
  別名 :二進対数,                   :log2
  別名 :正弦関数,                   :sin
  別名 :双曲線正弦関数,             :sinh
  別名 :平方根,                     :sqrt
  別名 :正接関数,                   :tan
  別名 :双曲線正接関数,             :tanh

  部の関数 :逆余弦関数,
           :逆双曲線余弦関数,
           :逆正弦関数,
           :逆双曲線正弦関数,
           :逆正接関数,
           :逆正接関数2,
           :逆双曲線正接関数,
           :立方根,
           :余弦関数,
           :双曲線余弦関数,
           :誤差関数,
           :相補誤差関数,
           :指数関数,
           :浮動小数点の仮数部と指数部,
           :Γ関数,
           :斜辺,
           :二の冪乗の乗算,
           :対数Γ関数,
           :対数,
           :常用対数,
           :二進対数,
           :正弦関数,
           :双曲線正弦関数,
           :平方根,
           :正接関数,
           :双曲線正接関数

  日本語の定数 :自然対数の底, Math::E
  日本語の定数 :ネイピア数,   Math::E
  日本語の定数 :円周率,       Math::PI
  日本語の定数 :π,           Math::PI

  日本語の定数を付加できること :自然対数の底,
                               :ネイピア数,
                               :円周率,
                               :π,
                               :定義域外のため失敗
}

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
