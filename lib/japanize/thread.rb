# -*- coding: utf-8 -*-

require 'japanize/core'

要求 'japanize/base'
要求 'japanize/names'

組(ファイバー) {
  特異組{
    別名 :委ねる, :yield
  }

  別名 :続ける, :resume

  # fiberライブラリのための定義
  # fiberライブラリが配置されるまで未定義なので別名にしない。
  特異操作の定義(:実行中) { current }
  定義(:存続しているか?) { alive? }
  定義(:切り替える) {|*引数, **名前付き引数, &塊| _引数を移譲(:transfer, *引数, **名前付き引数, &塊) }
}

組(スレッド) {
  特異組{
    定義(:点検中) { 自分.DEBUG }           # 通常は未定義なので別名にしない
    定義(:点検中=) {|値| 自分.DEBUG=(値) } # 通常は未定義なので別名にしない
    別名 :例外が発生したら中断,        :abort_on_exception
    別名 :例外が発生したら中断=,       :abort_on_exception=
    別名 :実行中,                      :current
    別名 :排他,                        :exclusive
    別名 :終了,                        :exit
    別名 :開始,                        :start
    別名 :分岐,                        :fork
    別名 :割り込みを制御する,          :handle_interrupt
    別名 :終了させる,                  :kill
    別名 :一覧,                        :list
    別名 :本線,                        :main
    別名 :譲る,                        :pass
    別名 :割り込みが猶予されているか?, :pending_interrupt?
    別名 :例外が発生したら報告,        :report_on_exception
    別名 :例外が発生したら報告=,       :report_on_exception=
    別名 :停止,                        :stop
  }

  別名 :例外が発生したら中断,        :abort_on_exception
  別名 :例外が発生したら中断=,       :abort_on_exception=
  別名 :追跡関数を追加,              :add_trace_func
  別名 :存続しているか?,             :alive?
  別名 :呼び出し履歴,                :backtrace
  別名 :呼び出し履歴の場所の一覧,    :backtrace_locations
  別名 :終了,                        :exit
  別名 :終了させる,                  :kill
  別名 :取得,                        :fetch
  別名 :所属する群れ,                :group
  # 別名 :検査,                      :inspect # 物で定義済み
  # 別名 :文字列に変換,              :to_s    # 物で定義済み
  別名 :合流,                        :join
  別名 :キーか?,                     :key?
  別名 :キーの一覧,                  :keys
  別名 :名前,                        :name
  別名 :名前=,                       :name=
  別名 :割り込みが猶予されているか?, :pending_interrupt?
  別名 :優先度,                      :priority
  別名 :例外を発生,                  :raise
  別名 :例外が発生したら報告,        :report_on_exception
  別名 :例外が発生したら報告=,       :report_on_exception=
  別名 :再開,                        :run
  別名 :安全度,                      :safe_level
  別名 :追跡関数を設定,              :set_trace_func
  別名 :状態,                        :status
  別名 :停止しているか?,             :stop?
  別名 :スレッド変数は存在するか?,   :thread_variable?
  別名 :スレッド変数を取得,          :thread_variable_get
  別名 :スレッド変数を設定,          :thread_variable_set
  別名 :結果,                        :value
  別名 :休止を解除,                  :wakeup

  組(呼び出し履歴::場所) {
    別名 :ファイルへの絶対的な経路, :absolute_path
    別名 :素の名前,                 :base_label
    # 別名 :検査,                   :inspect # 物で定義済み
    別名 :表札,                     :label
    別名 :行番号,                   :lineno
    別名 :ファイルへの経路,         :path
    # 別名 :文字列に変換,           :to_s    # 物で定義済み
  }

  組(相互排他制御) {
    別名 :獲得,              :lock
    別名 :獲得されているか?, :locked?
    別名 :所有しているか?,   :owned?
    別名 :休止,              :sleep
    別名 :同期させる,        :synchronize
    別名 :可能なら獲得,      :try_lock
    別名 :解放,              :unlock
  }

  組(条件変数) {
    別名 :全員に通知, :broadcast
    別名 :通知,       :signal
    別名 :待機,       :wait
  }

  組(待ち行列) {
    別名 :付け足す,         :push
    別名 :消去する,         :clear
    別名 :閉じる,           :close
    別名 :閉じたか?,        :closed?
    別名 :取り出す,         :pop
    別名 :先頭から取り出す, :shift
    別名 :空か?,            :empty?
    別名 :長さ,             :length
    別名 :大きさ,           :size
    別名 :待機スレッド数,   :num_waiting
  }

  組(上限付き待ち行列) {
    別名 :付け足す,         :push
    別名 :消去する,         :clear
    別名 :閉じる,           :close
    別名 :取り出す,         :pop
    別名 :先頭から取り出す, :shift
    別名 :空か?,            :empty?
    別名 :長さ,             :length
    別名 :大きさ,           :size
    別名 :最大待ち受け数,   :max
    別名 :最大待ち受け数=,  :max=
    別名 :待機スレッド数,   :num_waiting
  }
}

組(スレッドの群れ) {
  別名 :追加,            :add
  別名 :締め切る,        :enclose
  別名 :締め切られたか?, :enclosed?
  別名 :一覧,            :list

  日本語の定数 :既定の群れ, ThreadGroup::Default
}

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
