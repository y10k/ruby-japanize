# -*- coding: utf-8 -*-

require 'japanize/core'
require 'test/unit'

部の定義(日本語化) {
  日本語の定義(:試験単位, Test::Unit)

  部の定義(試験単位) {
    日本語の定義(:確認手段, Test::Unit::Assertions)

    部の定義(確認手段) {
      別名(:確認, :assert)
      別名(:等しいことを確認, :assert_equal)
    }

    組の定義(:試験事例, 原型: Test::Unit::TestCase) {
      定義(:setup) { 準備 }
      定義(:teardown) { 破棄 }
      定義(:準備) {}
      定義(:破棄) {}

      特異組の定義{
        別名(:資料, :data)
        別名(:試験, :test)
      }
    }
  }
}

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
