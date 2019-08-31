# -*- coding: utf-8 -*-

require 'japanize/core'

要求 'japanize/base'
要求 'japanize/names'

部(:制御命令) {
  定義(:繰り返す) {|列挙できる物, &塊|
    for 項目 in 列挙できる物
      塊[項目]
    end
  }
  部の関数 :繰り返す
}
付加 制御命令

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
