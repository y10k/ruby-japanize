# -*- coding: utf-8 -*-

require 'japanize'

k, a, b, a1, b1 = 2, 4, 1, 12, 4

循環{
  # 次の近似
  p, q, k = k * k, 2 * k + 1, k + 1
  a, b, a1, b1 = a1, b1, p * a + q * a1, p * b + q * b1

  d = a / b
  d1 = a1 / b1
  この条件なら{ d == d1 }.繰り返す{
    印字 d
    標準出力.書き込む
    a, a1 = 10 * (a % b), 10 * (a1 % b1)
    d, d1 = a / b, a1 / b1
  }
}
