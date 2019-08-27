# -*- coding: utf-8 -*-

require 'japanize/core'

要求 'test/unit'

部(日本語化) {
  日本語の定数 :試験単位, Test::Unit

  部(試験単位) {
    日本語の定数 :確認手段, Test::Unit::Assertions

    部(確認手段) {
      別名 :確認,             :assert
      別名 :等しいことを確認, :assert_equal
    }

    組(:試験事例, 原型: Test::Unit::TestCase) {
      定義(:setup) { 準備 }
      定義(:teardown) { 破棄 }
      定義(:準備) {}
      定義(:破棄) {}

      特異組{
        別名 :資料, :data
        別名 :試験, :test
      }
    }
  }
}

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
