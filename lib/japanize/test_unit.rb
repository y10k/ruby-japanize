# -*- coding: utf-8 -*-

require 'japanize/core'

要求 'test/unit'

部(日本語化) {
  日本語の定数 :試験単位, Test::Unit

  部(試験単位) {
    日本語の定数 :確認手段, Test::Unit::Assertions

    部(確認手段) {
      別名 :確認,                               :assert
      別名 :別名であることを確認,               :assert_alias_method
      別名 :手続きで確認,                       :assert_block
      別名 :真偽値であることを確認,             :assert_boolean
      別名 :比較して確認,                       :assert_compare
      別名 :定数が定義済みであることを確認,     :assert_const_defined
      別名 :空であることを確認,                 :assert_empty
      別名 :等しいことを確認,                   :assert_equal
      別名 :確認が失敗することを確認,           :assert_fail_assertion
      別名 :偽値であることを確認,               :assert_false
      別名 :誤差の範囲で等しいことを確認,       :assert_in_delta
      別名 :含まれることを確認,                 :assert_include
      別名 :生成物であることを確認,             :assert_instance_of
      別名 :一種であることを確認,               :assert_kind_of
      別名 :一致することを確認,                 :assert_match
      別名 :無値であることを確認,               :assert_nil
      別名 :定数が未定義であることを確認,       :assert_not_const_defined
      別名 :空ではないことを確認,               :assert_not_empty
      別名 :等しくないことを確認,               :assert_not_equal
      別名 :誤差の範囲で等しくないことを確認,   :assert_not_in_delta
      別名 :含まれないことを確認,               :assert_not_include
      別名 :生成物ではないことを確認,           :assert_not_instance_of
      別名 :一種ではないことを確認,             :assert_not_kind_of
      別名 :一致しないことを確認,               :assert_not_match
      別名 :無値ではないことを確認,             :assert_not_nil
      別名 :演算が成立しないことを確認,         :assert_not_operator
      別名 :状態が成立しないことを確認,         :assert_not_predicate
      別名 :応答しないことを確認,               :assert_not_respond_to
      別名 :同一ではないことを確認,             :assert_not_same
      別名 :送付した結果が成立しないことを確認, :assert_not_send
      別名 :例外が発生しないことを確認,         :assert_nothing_raised
      別名 :脱出しないことを確認,               :assert_nothing_thrown
      別名 :演算して確認,                       :assert_operator
      別名 :ファイルが存在することを確認,       :assert_path_exist
      別名 :ファイルが存在しないことを確認,     :assert_path_not_exist
      別名 :状態を確認,                         :assert_predicate
      別名 :例外が発生することを確認,           :assert_raise
      別名 :例外の一種が発生することを確認,     :assert_raise_kind_of
      別名 :発生した例外の伝文を確認,           :assert_raise_message
      別名 :応答することを確認,                 :assert_respond_to
      別名 :同一であることを確認,               :assert_same
      別名 :送付して確認,                       :assert_send
      別名 :脱出することを確認,                 :assert_throw
      別名 :真値であることを確認,               :assert_true
      別名 :失敗させる,                         :flunk
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
