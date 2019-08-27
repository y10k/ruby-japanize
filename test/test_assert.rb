# -*- coding: utf-8 -*-

require 'japanize/core'

要求 'japanize/test_unit'

部(日本語化) {
  部(:試験) {
    組(:確認手段の試験, 原型: 試験単位::試験事例) {
      資料('確認' => [
             %q{ assert([ 1, 2 ].include? 1) },
             %q{ assert([ 1, 2 ].include? 5) },
             %q{ 確認([ 1, 2 ].include? 1) },
             %q{ 確認([ 1, 2 ].include? 5) }
           ],
           '別名であることを確認' => [
             %q{ assert_alias_method([], :length, :size) },
             %q{ assert_alias_method([], :each, :size) },
             %q{ 別名であることを確認([], :length, :size) },
             %q{ 別名であることを確認([], :each, :size) }
           ],
           '手続きで確認' => [
             %q{ assert_block{ true } },
             %q{ assert_block{ nil } },
             %q{ 手続きで確認{ true } },
             %q{ 手続きで確認{ nil } }
           ],
           '真偽値であることを確認' => [
             %q{ assert_boolean(true) },
             %q{ assert_boolean(nil) },
             %q{ 真偽値であることを確認(true) },
             %q{ 真偽値であることを確認(nil) }
           ],
           '比較して確認' => [
             %q{ assert_compare(1, "<", 10) },
             %q{ assert_compare(1, ">=", 10) },
             %q{ 比較して確認(1, "<", 10) },
             %q{ 比較して確認(1, ">=", 10) }
           ],
           '定数が定義済みであることを確認' => [
             %q{ assert_const_defined(Test, :Unit) },
             %q{ assert_const_defined(Object, :Nonexistent) },
             %q{ 定数が定義済みであることを確認(Test, :Unit) },
             %q{ 定数が定義済みであることを確認(Object, :Nonexistent) }
           ],
           '空であることを確認' => [
             %q{ assert_empty([]) },
             %q{ assert_empty([ nil ]) },
             %q{ 空であることを確認([]) },
             %q{ 空であることを確認([ nil ]) }
           ],
           '等しいことを確認' => [
             %q{ assert_equal('MY STRING', 'my string'.upcase) },
             %q{ assert_equal('MY STRING', 'my string') },
             %q{ 等しいことを確認('MY STRING', 'my string'.upcase) },
             %q{ 等しいことを確認('MY STRING', 'my string') }
           ],
           '確認が失敗することを確認' => [
             %q{ assert_fail_assertion{ assert_equal("A", "B") } },
             %q{ assert_fail_assertion{ assert_equal("A", "A") } },
             %q{ 確認が失敗することを確認{ assert_equal("A", "B") } },
             %q{ 確認が失敗することを確認{ assert_equal("A", "A") } }
           ],
           '偽値であることを確認' => [
             %q{ assert_false(false) },
             %q{ assert_false(nil) },
             %q{ 偽値であることを確認(false) },
             %q{ 偽値であることを確認(nil) }
           ],
           '誤差の範囲で等しいことを確認' => [
             %q{ assert_in_delta(0.05, (50000.0 / 10**6), 0.00001) },
             %q{ assert_in_delta(0.05, 0.0501, 0.00001) },
             %q{ 誤差の範囲で等しいことを確認(0.05, (50000.0 / 10**6), 0.00001) },
             %q{ 誤差の範囲で等しいことを確認(0.05, 0.0501, 0.00001) }
           ],
           '含まれることを確認' => [
             %q{ assert_include([ 1, 10 ], 1) },
             %q{ assert_include([ 1, 10 ], 5) },
             %q{ 含まれることを確認([ 1, 10 ], 1) },
             %q{ 含まれることを確認([ 1, 10 ], 5) }
           ],
           '生成物であることを確認' => [
             %q{ assert_instance_of([ Integer, NilClass ], 100) },
             %q{ assert_instance_of([ Numeric, NilClass ], 100) },
             %q{ 生成物であることを確認([ Integer, NilClass ], 100) },
             %q{ 生成物であることを確認([ Numeric, NilClass ], 100) }
           ],
           '一種であることを確認' => [
             %q{ assert_kind_of([ Numeric, NilClass ], 100) },
             %q{ assert_kind_of([ Numeric, NilClass ], "string") },
             %q{ 一種であることを確認([ Numeric, NilClass ], 100) },
             %q{ 一種であることを確認([ Numeric, NilClass ], "string") }
           ],
           '一致することを確認' => [
             %q{ assert_match(/\d+/, 'five, 6, seven') },
             %q{ assert_match(/six/, 'five, 6, seven') },
             %q{ 一致することを確認(/\d+/, 'five, 6, seven') },
             %q{ 一致することを確認(/six/, 'five, 6, seven') }
           ],
           '無値であることを確認' => [
             %q{ assert_nil([ 1, 2 ].uniq!) },
             %q{ assert_nil('1 two 3'.sub!(/two/, '2')) },
             %q{ 無値であることを確認([ 1, 2 ].uniq!) },
             %q{ 無値であることを確認('1 two 3'.sub!(/two/, '2')) }
           ],
           '定数が未定義であることを確認' => [
             %q{ assert_not_const_defined(Object, :Nonexistent) },
             %q{ assert_not_const_defined(Test, :Unit) },
             %q{ 定数が未定義であることを確認(Object, :Nonexistent) },
             %q{ 定数が未定義であることを確認(Test, :Unit) }
           ],
           '空ではないことを確認' => [
             %q{ assert_not_empty([ nil ]) },
             %q{ assert_not_empty([]) },
             %q{ 空ではないことを確認([ nil ]) },
             %q{ 空ではないことを確認([]) }
           ],
           '等しくないことを確認' => [
             %q{ assert_not_equal('some string', 5) },
             %q{ assert_not_equal('MY STRING', 'my string'.upcase) },
             %q{ 等しくないことを確認('some string', 5) },
             %q{ 等しくないことを確認('MY STRING', 'my string'.upcase) }
           ],
           '誤差の範囲で等しくないことを確認' => [
             %q{ assert_not_in_delta(0.05, 0.0501, 0.00001) },
             %q{ assert_not_in_delta(0.05, (50000.0 / 10**6), 0.00001) },
             %q{ 誤差の範囲で等しくないことを確認(0.05, 0.0501, 0.00001) },
             %q{ 誤差の範囲で等しくないことを確認(0.05, (50000.0 / 10**6), 0.00001) }
           ],
           '含まれないことを確認' => [
             %q{ assert_not_include([ 1, 10 ], 5) },
             %q{ assert_not_include([ 1, 10 ], 1) },
             %q{ 含まれないことを確認([ 1, 10 ], 5) },
             %q{ 含まれないことを確認([ 1, 10 ], 1) }
           ],
           '生成物ではないことを確認' => [
             %q{ assert_not_instance_of([ Integer, NilClass ], '100') },
             %q{ assert_not_instance_of([ Integer, NilClass ], 100) },
             %q{ 生成物ではないことを確認([ Integer, NilClass ], '100') },
             %q{ 生成物ではないことを確認([ Integer, NilClass ], 100) }
           ],
           '一種ではないことを確認' => [
             %q{ assert_not_kind_of([ Numeric, NilClass ], '0') },
             %q{ assert_not_kind_of([ Numeric, NilClass ], 100) },
             %q{ 一種ではないことを確認([ Numeric, NilClass ], '0') },
             %q{ 一種ではないことを確認([ Numeric, NilClass ], 100) }
           ],
           '一致しないことを確認' => [
             %q{ assert_not_match(/two/, 'one 2 three') },
             %q{ assert_not_match(/three/, 'one 2 three') },
             %q{ 一致しないことを確認(/two/, 'one 2 three') },
             %q{ 一致しないことを確認(/three/, 'one 2 three') }
           ],
           '無値ではないことを確認' => [
             %q{ assert_not_nil('1 two 3'.sub!(/two/, '2')) },
             %q{ assert_not_nil([ 1, 2 ].uniq!) },
             %q{ 無値ではないことを確認('1 two 3'.sub!(/two/, '2')) },
             %q{ 無値ではないことを確認([ 1, 2 ].uniq!) }
           ],
           '演算が成立しないことを確認' => [
             %q{ assert_not_operator(5, :<, 4) },
             %q{ assert_not_operator(5, :>, 4) },
             %q{ 演算が成立しないことを確認(5, :<, 4) },
             %q{ 演算が成立しないことを確認(5, :>, 4) }
           ],
           '状態が成立しないことを確認' => [
             %q{ assert_not_predicate([ 1 ], :empty?) },
             %q{ assert_not_predicate([], :empty?) },
             %q{ 状態が成立しないことを確認([ 1 ], :empty?) },
             %q{ 状態が成立しないことを確認([], :empty?) }
           ],
           '応答しないことを確認' => [
             %q{ assert_not_respond_to('bugbear', :nonexistence) },
             %q{ assert_not_respond_to('bugbear', :size) },
             %q{ 応答しないことを確認('bugbear', :nonexistence) },
             %q{ 応答しないことを確認('bugbear', :size) }
           ],
           '同一ではないことを確認' => [
             %q{ assert_not_same(Object.new, Object.new) },
             %q{ assert_not_same(:my_symbol, :my_symbol) },
             %q{ 同一ではないことを確認(Object.new, Object.new) },
             %q{ 同一ではないことを確認(:my_symbol, :my_symbol) }
           ],
           '送付した結果が成立しないことを確認' => [
             %q{ assert_not_send([ [ 1, 2 ], :member?, 4 ]) },
             %q{ assert_not_send([ [ 1, 2 ], :member?, 1 ]) },
             %q{ 送付した結果が成立しないことを確認([ [ 1, 2 ], :member?, 4 ]) },
             %q{ 送付した結果が成立しないことを確認([ [ 1, 2 ], :member?, 1 ]) }
           ],
           '例外が発生しないことを確認' => [
             %q{ assert_nothing_raised{ [ 1, 2 ].uniq } },
             %q{ assert_nothing_raised{ raise 'Boom!!!' } },
             %q{ 例外が発生しないことを確認{ [ 1, 2 ].uniq } },
             %q{ 例外が発生しないことを確認{ raise 'Boom!!!' } }
           ],
           '脱出しないことを確認' => [
             %q{ assert_nothing_thrown{ [ 1, 2 ].uniq } },
             %q{ assert_nothing_thrown{ throw(:done) } },
             %q{ 脱出しないことを確認{ [ 1, 2 ].uniq } },
             %q{ 脱出しないことを確認{ throw(:done) } }
           ],
           '演算して確認' => [
             %q{ assert_operator(5, :>=, 4) },
             %q{ assert_operator(5, :<, 4) },
             %q{ 演算して確認(5, :>=, 4) },
             %q{ 演算して確認(5, :<, 4) }
           ],
           'ファイルが存在することを確認' => [
             %q{ assert_path_exist("/bin/sh") },
             %q{ assert_path_exist("/nonexistent") },
             %q{ ファイルが存在することを確認("/bin/sh") },
             %q{ ファイルが存在することを確認("/nonexistent") }
           ],
           'ファイルが存在しないことを確認' => [
             %q{ assert_path_not_exist("/nonexistent") },
             %q{ assert_path_not_exist("/bin/sh") },
             %q{ ファイルが存在しないことを確認("/nonexistent") },
             %q{ ファイルが存在しないことを確認("/bin/sh") }
           ],
           '状態を確認' => [
             %q{ assert_predicate([], :empty?) },
             %q{ assert_predicate([ 1 ], :empty?) },
             %q{ 状態を確認([], :empty?) },
             %q{ 状態を確認([ 1 ], :empty?) }
           ],
           '例外が発生することを確認' => [
             %q{ assert_raise(RuntimeError, LoadError) { raise 'Boom!!!' } },
             %q{ assert_raise(RuntimeError.new("ZZZ")) { raise "XXX" } },
             %q{ 例外が発生することを確認(RuntimeError, LoadError) { raise 'Boom!!!' } },
             %q{ 例外が発生することを確認(RuntimeError.new("ZZZ")) { raise "XXX" } }
           ],
           '例外の一種が発生することを確認' => [
             %q{ assert_raise_kind_of(SystemCallError) { raise Errno::EACCES } },
             %q{ assert_raise_kind_of(RuntimeError) { raise Errno::EACCES } },
             %q{ 例外の一種が発生することを確認(SystemCallError) { raise Errno::EACCES } },
             %q{ 例外の一種が発生することを確認(RuntimeError) { raise Errno::EACCES } }
           ],
           '発生した例外の伝文を確認' => [
             %q{ assert_raise_message("exception") { raise "exception" } },
             %q{ assert_raise_message("exception") { raise "EXCEPTION" } },
             %q{ 発生した例外の伝文を確認("exception") { raise "exception" } },
             %q{ 発生した例外の伝文を確認("exception") { raise "EXCEPTION" } }
           ],
           '応答することを確認' => [
             %q{ assert_respond_to('bugbear', :slice) },
             %q{ assert_respond_to('bugbear', :nonexistence) },
             %q{ 応答することを確認('bugbear', :slice) },
             %q{ 応答することを確認('bugbear', :nonexistence) }
           ],
           '同一であることを確認' => [
             %q{ assert_same(:my_symbol, :my_symbol) },
             %q{ assert_same(Object.new, Object.new) },
             %q{ 同一であることを確認(:my_symbol, :my_symbol) },
             %q{ 同一であることを確認(Object.new, Object.new) }
           ],
           '送付して確認' => [
             %q{ assert_send([ [ 1, 2 ], :member?, 1 ]) },
             %q{ assert_send([ [ 1, 2 ], :member?, 4 ]) },
             %q{ 送付して確認([ [ 1, 2 ], :member?, 1 ]) },
             %q{ 送付して確認([ [ 1, 2 ], :member?, 4 ]) }
           ],
           '脱出することを確認' => [
             %q{ assert_throw(:done) { throw(:done) } },
             %q{ assert_throw(:done) { [ 1, 2 ].uniq } },
             %q{ 脱出することを確認(:done) { throw(:done) } },
             %q{ 脱出することを確認(:done) { [ 1, 2 ].uniq } }
           ],
           '真値であることを確認' => [
             %q{ assert_true(true) },
             %q{ assert_true(:true) },
             %q{ 真値であることを確認(true) },
             %q{ 真値であることを確認(:true) }
           ])
      試験('日本語名称を確認') {|資料|
        元の確認の成功, 元の確認の失敗, 日本語化した確認の成功, 日本語化した確認の失敗 = 資料

        assert_match(/\A [a-z]/x, 元の確認の成功.strip)
        eval(元の確認の成功)

        assert_match(/\A [a-z]/x, 元の確認の失敗.strip)
        assert_fail_assertion{ eval(元の確認の失敗) }

        assert_no_match(/\A [a-z]/x, 日本語化した確認の成功.strip)
        eval(日本語化した確認の成功)

        assert_no_match(/\A [a-z]/x, 日本語化した確認の失敗.strip)
        assert_fail_assertion{ eval(日本語化した確認の失敗) }
      }

      試験('失敗させる確認') {
        assert_fail_assertion{ flunk }
        assert_fail_assertion{ 失敗させる }
      }
    }
  }
}

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
