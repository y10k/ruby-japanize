# -*- coding: utf-8 -*-

require 'japanize/core'

要求 'japanize/process'
要求 'japanize/test_unit'

部(日本語化) {
  部(:試験) {
    組(:プロセスの操作の試験, 原型: 試験単位::試験事例) {
      資料('中断'                             => [ :中断,                             :abort ],
           '外部のプログラムを上書き実行する' => [ :外部のプログラムを上書き実行する, :exec ],
           '終了'                             => [ :終了,                             :exit ],
           '終了!'                            => [ :終了!,                            :exit! ],
           '分岐'                             => [ :分岐,                             :fork ],
           '最後の状態'                       => [ :最後の状態,                       :last_status ],
           '外部のプログラムを実行する'       => [ :外部のプログラムを実行する,       :spawn ])
      試験('特異操作の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        別名であることを確認(プロセス, 日本語の別名, 元の名前)
        含まれることを確認(プロセス.公開された操作の一覧, 日本語の別名)
      }

      資料('スクリプトの名前'                  => [ :スクリプトの名前,                  :argv0 ],
           '同期信号に基いて時刻を取得'        => [ :時計から時刻を取得,                :clock_gettime ],
           '同期信号に基いて時間分解能を取得'  => [ :時計から時間分解能を取得,          :clock_getres ],
           '裏方に回る'                        => [ :裏方に回る,                        :daemon ],
           '切り離す'                          => [ :切り離す,                          :detach ],
           '実効グループの識別番号'            => [ :実効グループの識別番号,            :egid ],
           '実効グループの識別番号='           => [ :実効グループの識別番号=,           :egid= ],
           '実効ユーザの識別番号'              => [ :実効ユーザの識別番号,              :euid ],
           '実効ユーザの識別番号='             => [ :実効ユーザの識別番号=,             :euid= ],
           'プロセスの群れの識別番号を取得'    => [ :プロセスの群れの識別番号を取得,    :getpgid ],
           'プロセスの群れを取得'              => [ :プロセスの群れを取得,              :getpgrp ],
           '優先度を取得'                      => [ :優先度を取得,                      :getpriority ],
           '資源の制限値を取得'                => [ :資源の制限値を取得,                :getrlimit ],
           '対話操作の識別番号を取得'          => [ :対話操作の識別番号を取得,          :getsid ],
           '実グループの識別番号'              => [ :実グループの識別番号,              :gid ],
           '実グループの識別番号='             => [ :実グループの識別番号=,             :gid= ],
           '補助グループの一覧'                => [ :補助グループの一覧,                :groups ],
           '補助グループの一覧='               => [ :補助グループの一覧=,               :groups= ],
           '所属するグループの一覧を更新'      => [ :所属するグループの一覧を更新,      :initgroups ],
           '通知'                              => [ :通知,                              :kill ],
           '補助グループの最大数'              => [ :補助グループの最大数,              :maxgroups ],
           '補助グループの最大数='             => [ :補助グループの最大数=,             :maxgroups= ],
           'プロセスの識別番号'                => [ :プロセスの識別番号,                :pid ],
           '親プロセスの識別番号'              => [ :親プロセスの識別番号,              :ppid ],
           'プロセスの群れの識別番号を設定'    => [ :プロセスの群れの識別番号を設定,    :setpgid ],
           'プロセスの群れを設定'              => [ :プロセスの群れを設定,              :setpgrp ],
           '優先度を設定'                      => [ :優先度を設定,                      :setpriority ],
           'プロセスの表題を設定'              => [ :プロセスの表題を設定,              :setproctitle ],
           '資源の制限値を設定'                => [ :資源の制限値を設定,                :setrlimit ],
           '対話操作の識別番号を設定'          => [ :対話操作の識別番号を設定,          :setsid ],
           '積算時間を取得'                    => [ :積算時間を取得,                    :times ],
           '実ユーザの識別番号'                => [ :実ユーザの識別番号,                :uid ],
           '実ユーザの識別番号='               => [ :実ユーザの識別番号=,               :uid= ],
           '子プロセスの終了を待機'            => [ :子プロセスの終了を待機,            :wait ],
           '子プロセスの終了を待機2'           => [ :子プロセスの終了を待機2,           :wait2 ],
           '全ての子プロセスの終了を待機'      => [ :全ての子プロセスの終了を待機,      :waitall ],
           '識別番号の子プロセスの終了を待機'  => [ :識別番号の子プロセスの終了を待機,  :waitpid ],
           '識別番号の子プロセスの終了を待機2' => [ :識別番号の子プロセスの終了を待機2, :waitpid2 ])
      試験('部の関数の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        別名であることを確認(プロセス, 日本語の別名, 元の名前)
        含まれることを確認(プロセス.生成物が持つ秘密の操作の一覧, 日本語の別名)
        含まれることを確認(プロセス.公開された操作の一覧, 元の名前)
        含まれることを確認(プロセス.公開された操作の一覧, 日本語の別名)
      }

      資料('時計_実時間'                                   => [ プロセス::時計_実時間,                                   Process::CLOCK_REALTIME ])             if (defined? Process::CLOCK_REALTIME)
      資料('時計_単調増加の経過時間'                       => [ プロセス::時計_単調増加の経過時間,                       Process::CLOCK_MONOTONIC ])            if (defined? Process::CLOCK_MONOTONIC)
      資料('時計_プロセス単位のCPU時間'                    => [ プロセス::時計_プロセス単位のCPU時間,                    Process::CLOCK_PROCESS_CPUTIME_ID ])   if (defined? Process::CLOCK_PROCESS_CPUTIME_ID)
      資料('時計_スレッド単位のCPU時間'                    => [ プロセス::時計_スレッド単位のCPU時間,                    Process::CLOCK_THREAD_CPUTIME_ID ])    if (defined? Process::CLOCK_THREAD_CPUTIME_ID)
      資料('時計_仮想の経過時間'                           => [ プロセス::時計_仮想の経過時間,                           Process::CLOCK_VIRTUAL ])              if (defined? Process::CLOCK_VIRTUAL)
      資料('時計_性能解析用の経過時間'                     => [ プロセス::時計_性能解析用の経過時間,                     Process::CLOCK_PROF ])                 if (defined? Process::CLOCK_PROF)
      資料('時計_高速な実時間'                             => [ プロセス::時計_高速な実時間,                             Process::CLOCK_REALTIME_FAST ])        if (defined? Process::CLOCK_REALTIME_FAST)
      資料('時計_精密な実時間'                             => [ プロセス::時計_精密な実時間,                             Process::CLOCK_REALTIME_PRECISE ])     if (defined? Process::CLOCK_REALTIME_PRECISE)
      資料('時計_概略の実時間'                             => [ プロセス::時計_概略の実時間,                             Process::CLOCK_REALTIME_COARSE ])      if (defined? Process::CLOCK_REALTIME_COARSE)
      資料('時計_システムの復帰を伴う実時間'               => [ プロセス::時計_システムの復帰を伴う実時間,               Process::CLOCK_REALTIME_ALARM ])       if (defined? Process::CLOCK_REALTIME_ALARM)
      資料('時計_高速で単調増加の経過時間'                 => [ プロセス::時計_高速で単調増加の経過時間,                 Process::CLOCK_MONOTONIC_FAST ])       if (defined? Process::CLOCK_MONOTONIC_FAST)
      資料('時計_精密で単調増加の経過時間'                 => [ プロセス::時計_精密で単調増加の経過時間,                 Process::CLOCK_MONOTONIC_PRECISE ])    if (defined? Process::CLOCK_MONOTONIC_PRECISE)
      資料('時計_概略で単調増加の経過時間'                 => [ プロセス::時計_概略で単調増加の経過時間,                 Process::CLOCK_MONOTONIC_COARSE ])     if (defined? Process::CLOCK_MONOTONIC_COARSE)
      資料('時計_未加工で単調増加の経過時間'               => [ プロセス::時計_未加工で単調増加の経過時間,               Process::CLOCK_MONOTONIC_RAW ])        if (defined? Process::CLOCK_MONOTONIC_RAW)
      資料('時計_近似的で未加工な単調増加の経過時間'       => [ プロセス::時計_近似的で未加工な単調増加の経過時間,       Process::CLOCK_MONOTONIC_RAW_APPROX ]) if (defined? Process::CLOCK_MONOTONIC_RAW_APPROX)
      資料('時計_起動時からの経過時間'                     => [ プロセス::時計_起動時からの経過時間,                     Process::CLOCK_BOOTTIME ])             if (defined? Process::CLOCK_BOOTTIME)
      資料('時計_システムの復帰を伴う起動時からの経過時間' => [ プロセス::時計_システムの復帰を伴う起動時からの経過時間, Process::CLOCK_BOOTTIME_ALARM ])       if (defined? Process::CLOCK_BOOTTIME_ALARM)
      資料('時計_連続稼動時間'                             => [ プロセス::時計_連続稼動時間,                             Process::CLOCK_UPTIME ])               if (defined? Process::CLOCK_UPTIME)
      資料('時計_高速な連続稼動時間'                       => [ プロセス::時計_高速な連続稼動時間,                       Process::CLOCK_UPTIME_FAST ])          if (defined? Process::CLOCK_UPTIME_FAST)
      資料('時計_精密な連続稼動時間'                       => [ プロセス::時計_精密な連続稼動時間,                       Process::CLOCK_UPTIME_PRECISE ])       if (defined? Process::CLOCK_UPTIME_PRECISE)
      資料('時計_未加工な連続稼動時間'                     => [ プロセス::時計_未加工な連続稼動時間,                     Process::CLOCK_UPTIME_RAW ])           if (defined? Process::CLOCK_UPTIME_RAW)
      資料('時計_近似的で未加工な連続稼動時間'             => [ プロセス::時計_近似的で未加工な連続稼動時間,             Process::CLOCK_UPTIME_RAW_APPROX ])    if (defined? Process::CLOCK_UPTIME_RAW_APPROX)
      資料('時計_秒数'                                     => [ プロセス::時計_秒数,                                     Process::CLOCK_SECOND ])               if (defined? Process::CLOCK_SECOND)
      資料('時計_国際原子時'                               => [ プロセス::時計_国際原子時,                               Process::CLOCK_TAI ])                  if (defined? Process::CLOCK_TAI)
      資料('資源の制限値_中断ファイルの大きさ'             => [ プロセス::資源の制限値_中断ファイルの大きさ,             Process::RLIMIT_CORE ])                if (defined? Process::RLIMIT_CORE)
      資料('資源の制限値_CPU時間'                          => [ プロセス::資源の制限値_CPU時間,                          Process::RLIMIT_CPU ])                 if (defined? Process::RLIMIT_CPU)
      資料('資源の制限値_データ領域の大きさ'               => [ プロセス::資源の制限値_データ領域の大きさ,               Process::RLIMIT_DATA ])                if (defined? Process::RLIMIT_DATA)
      資料('資源の制限値_ファイルの大きさ'                 => [ プロセス::資源の制限値_ファイルの大きさ,                 Process::RLIMIT_FSIZE ])               if (defined? Process::RLIMIT_FSIZE)
      資料('資源の制限値_ファイル数'                       => [ プロセス::資源の制限値_ファイル数,                       Process::RLIMIT_NOFILE ])              if (defined? Process::RLIMIT_NOFILE)
      資料('資源の制限値_スタック領域の大きさ'             => [ プロセス::資源の制限値_スタック領域の大きさ,             Process::RLIMIT_STACK ])               if (defined? Process::RLIMIT_STACK)
      資料('資源の制限値_仮想記憶領域の大きさ'             => [ プロセス::資源の制限値_仮想記憶領域の大きさ,             Process::RLIMIT_AS ])                  if (defined? Process::RLIMIT_AS)
      資料('資源の制限値_常駐化する記憶領域の大きさ'       => [ プロセス::資源の制限値_常駐化する記憶領域の大きさ,       Process::RLIMIT_MEMLOCK ])             if (defined? Process::RLIMIT_MEMLOCK)
      資料('資源の制限値_プロセス数'                       => [ プロセス::資源の制限値_プロセス数,                       Process::RLIMIT_NPROC ])               if (defined? Process::RLIMIT_NPROC)
      資料('資源の制限値_実記憶領域の大きさ'               => [ プロセス::資源の制限値_実記憶領域の大きさ,               Process::RLIMIT_RSS ])                 if (defined? Process::RLIMIT_RSS)
      資料('資源の制限値_ソケットの作業領域の大きさ'       => [ プロセス::資源の制限値_ソケットの作業領域の大きさ,       Process::RLIMIT_SBSIZE ])              if (defined? Process::RLIMIT_SBSIZE)
      資料('資源の制限値が無制限'                          => [ プロセス::資源の制限値が無制限,                          Process::RLIM_INFINITY ],
           '資源の制限値が設定値'                          => [ プロセス::資源の制限値が設定値,                          Process::RLIM_SAVED_CUR ],
           '資源の制限値が限界値'                          => [ プロセス::資源の制限値が限界値,                          Process::RLIM_SAVED_MAX ],
           '優先度の対象がプロセス'                        => [ プロセス::優先度の対象がプロセス,                        Process::PRIO_PROCESS ],
           '優先度の対象がプロセスの群れ'                  => [ プロセス::優先度の対象がプロセスの群れ,                  Process::PRIO_PGRP ],
           '優先度の対象がユーザ'                          => [ プロセス::優先度の対象がユーザ,                          Process::PRIO_USER ],
           '待機で未追跡の子プロセスが対象'                => [ プロセス::待機で未追跡の子プロセスが対象,                Process::WUNTRACED ])
      試験('日本語の定数を確認') {|資料|
        日本語の定数の値, 元の定数の値 = 資料
        同一であることを確認(元の定数の値, 日本語の定数の値)
      }

      資料('時計_実時間'                                   => [ :時計_実時間,                                   Process::CLOCK_REALTIME ])             if (defined? Process::CLOCK_REALTIME)
      資料('時計_単調増加の経過時間'                       => [ :時計_単調増加の経過時間,                       Process::CLOCK_MONOTONIC ])            if (defined? Process::CLOCK_MONOTONIC)
      資料('時計_プロセス単位のCPU時間'                    => [ :時計_プロセス単位のCPU時間,                    Process::CLOCK_PROCESS_CPUTIME_ID ])   if (defined? Process::CLOCK_PROCESS_CPUTIME_ID)
      資料('時計_スレッド単位のCPU時間'                    => [ :時計_スレッド単位のCPU時間,                    Process::CLOCK_THREAD_CPUTIME_ID ])    if (defined? Process::CLOCK_THREAD_CPUTIME_ID)
      資料('時計_仮想の経過時間'                           => [ :時計_仮想の経過時間,                           Process::CLOCK_VIRTUAL ])              if (defined? Process::CLOCK_VIRTUAL)
      資料('時計_性能解析用の経過時間'                     => [ :時計_性能解析用の経過時間,                     Process::CLOCK_PROF ])                 if (defined? Process::CLOCK_PROF)
      資料('時計_高速な実時間'                             => [ :時計_高速な実時間,                             Process::CLOCK_REALTIME_FAST ])        if (defined? Process::CLOCK_REALTIME_FAST)
      資料('時計_精密な実時間'                             => [ :時計_精密な実時間,                             Process::CLOCK_REALTIME_PRECISE ])     if (defined? Process::CLOCK_REALTIME_PRECISE)
      資料('時計_概略の実時間'                             => [ :時計_概略の実時間,                             Process::CLOCK_REALTIME_COARSE ])      if (defined? Process::CLOCK_REALTIME_COARSE)
      資料('時計_システムの復帰を伴う実時間'               => [ :時計_システムの復帰を伴う実時間,               Process::CLOCK_REALTIME_ALARM ])       if (defined? Process::CLOCK_REALTIME_ALARM)
      資料('時計_高速で単調増加の経過時間'                 => [ :時計_高速で単調増加の経過時間,                 Process::CLOCK_MONOTONIC_FAST ])       if (defined? Process::CLOCK_MONOTONIC_FAST)
      資料('時計_精密で単調増加の経過時間'                 => [ :時計_精密で単調増加の経過時間,                 Process::CLOCK_MONOTONIC_PRECISE ])    if (defined? Process::CLOCK_MONOTONIC_PRECISE)
      資料('時計_概略で単調増加の経過時間'                 => [ :時計_概略で単調増加の経過時間,                 Process::CLOCK_MONOTONIC_COARSE ])     if (defined? Process::CLOCK_MONOTONIC_COARSE)
      資料('時計_未加工で単調増加の経過時間'               => [ :時計_未加工で単調増加の経過時間,               Process::CLOCK_MONOTONIC_RAW ])        if (defined? Process::CLOCK_MONOTONIC_RAW)
      資料('時計_近似的で未加工な単調増加の経過時間'       => [ :時計_近似的で未加工な単調増加の経過時間,       Process::CLOCK_MONOTONIC_RAW_APPROX ]) if (defined? Process::CLOCK_MONOTONIC_RAW_APPROX)
      資料('時計_起動時からの経過時間'                     => [ :時計_起動時からの経過時間,                     Process::CLOCK_BOOTTIME ])             if (defined? Process::CLOCK_BOOTTIME)
      資料('時計_システムの復帰を伴う起動時からの経過時間' => [ :時計_システムの復帰を伴う起動時からの経過時間, Process::CLOCK_BOOTTIME_ALARM ])       if (defined? Process::CLOCK_BOOTTIME_ALARM)
      資料('時計_連続稼動時間'                             => [ :時計_連続稼動時間,                             Process::CLOCK_UPTIME ])               if (defined? Process::CLOCK_UPTIME)
      資料('時計_高速な連続稼動時間'                       => [ :時計_高速な連続稼動時間,                       Process::CLOCK_UPTIME_FAST ])          if (defined? Process::CLOCK_UPTIME_FAST)
      資料('時計_精密な連続稼動時間'                       => [ :時計_精密な連続稼動時間,                       Process::CLOCK_UPTIME_PRECISE ])       if (defined? Process::CLOCK_UPTIME_PRECISE)
      資料('時計_未加工な連続稼動時間'                     => [ :時計_未加工な連続稼動時間,                     Process::CLOCK_UPTIME_RAW ])           if (defined? Process::CLOCK_UPTIME_RAW)
      資料('時計_近似的で未加工な連続稼動時間'             => [ :時計_近似的で未加工な連続稼動時間,             Process::CLOCK_UPTIME_RAW_APPROX ])    if (defined? Process::CLOCK_UPTIME_RAW_APPROX)
      資料('時計_秒数'                                     => [ :時計_秒数,                                     Process::CLOCK_SECOND ])               if (defined? Process::CLOCK_SECOND)
      資料('時計_国際原子時'                               => [ :時計_国際原子時,                               Process::CLOCK_TAI ])                  if (defined? Process::CLOCK_TAI)
      資料('資源の制限値_中断ファイルの大きさ'             => [ :資源の制限値_中断ファイルの大きさ,             Process::RLIMIT_CORE ])                if (defined? Process::RLIMIT_CORE)
      資料('資源の制限値_CPU時間'                          => [ :資源の制限値_CPU時間,                          Process::RLIMIT_CPU ])                 if (defined? Process::RLIMIT_CPU)
      資料('資源の制限値_データ領域の大きさ'               => [ :資源の制限値_データ領域の大きさ,               Process::RLIMIT_DATA ])                if (defined? Process::RLIMIT_DATA)
      資料('資源の制限値_ファイルの大きさ'                 => [ :資源の制限値_ファイルの大きさ,                 Process::RLIMIT_FSIZE ])               if (defined? Process::RLIMIT_FSIZE)
      資料('資源の制限値_ファイル数'                       => [ :資源の制限値_ファイル数,                       Process::RLIMIT_NOFILE ])              if (defined? Process::RLIMIT_NOFILE)
      資料('資源の制限値_スタック領域の大きさ'             => [ :資源の制限値_スタック領域の大きさ,             Process::RLIMIT_STACK ])               if (defined? Process::RLIMIT_STACK)
      資料('資源の制限値_仮想記憶領域の大きさ'             => [ :資源の制限値_仮想記憶領域の大きさ,             Process::RLIMIT_AS ])                  if (defined? Process::RLIMIT_AS)
      資料('資源の制限値_常駐化する記憶領域の大きさ'       => [ :資源の制限値_常駐化する記憶領域の大きさ,       Process::RLIMIT_MEMLOCK ])             if (defined? Process::RLIMIT_MEMLOCK)
      資料('資源の制限値_プロセス数'                       => [ :資源の制限値_プロセス数,                       Process::RLIMIT_NPROC ])               if (defined? Process::RLIMIT_NPROC)
      資料('資源の制限値_実記憶領域の大きさ'               => [ :資源の制限値_実記憶領域の大きさ,               Process::RLIMIT_RSS ])                 if (defined? Process::RLIMIT_RSS)
      資料('資源の制限値_ソケットの作業領域の大きさ'       => [ :資源の制限値_ソケットの作業領域の大きさ,       Process::RLIMIT_SBSIZE ])              if (defined? Process::RLIMIT_SBSIZE)
      資料('資源の制限値が無制限'                          => [ :資源の制限値が無制限,                          Process::RLIM_INFINITY ],
           '資源の制限値が設定値'                          => [ :資源の制限値が設定値,                          Process::RLIM_SAVED_CUR ],
           '資源の制限値が限界値'                          => [ :資源の制限値が限界値,                          Process::RLIM_SAVED_MAX ],
           '優先度の対象がプロセス'                        => [ :優先度の対象がプロセス,                        Process::PRIO_PROCESS ],
           '優先度の対象がプロセスの群れ'                  => [ :優先度の対象がプロセスの群れ,                  Process::PRIO_PGRP ],
           '優先度の対象がユーザ'                          => [ :優先度の対象がユーザ,                          Process::PRIO_USER ],
           '待機で未追跡の子プロセスが対象'                => [ :待機で未追跡の子プロセスが対象,                Process::WUNTRACED ],
           '状態'                                          => [ :状態,                                          Process::Status ],
           '積算時間'                                      => [ :積算時間,                                      Process::Tms ],
           'ユーザ識別番号'                                => [ :ユーザ識別番号,                                Process::UID ],
           'グループ識別番号'                              => [ :グループ識別番号,                              Process::GID ],
           '識別番号のシステムコール'                      => [ :識別番号のシステムコール,                      Process::Sys ])
      試験('日本語の定数の付加と付与を確認') {|資料|
        日本語の定数名, 元の定数の値 = 資料

        付加対象の組 = 組.新規
        付加対象の組.付加(プロセス)
        同一であることを確認(元の定数の値, 付加対象の組.公開された範囲で送信(日本語の定数名))

        付与対象の組 = 組.新規
        付与対象の組.付与(プロセス)
        同一であることを確認(元の定数の値, 付与対象の組.公開された範囲で送信(日本語の定数名))
      }
    }

    組(:プロセス_状態の操作の試験, 原型: 試験単位::試験事例) {
      あるプロセスの状態 = nil

      特異操作の定義(:起動) {
        プロセス.分岐{ プロセス.終了 }
        プロセス.子プロセスの終了を待機
        あるプロセスの状態 = $?
      }

      資料('中断ファイルを出力したか?' => [ :中断ファイルを出力したか?, :coredump? ],
           '終了したか?'               => [ :終了したか?,               :exited? ],
           '終了状態'                  => [ :終了状態,                  :exitstatus ],
           'プロセスの識別番号'        => [ :プロセスの識別番号,        :pid ],
           '中断したか?'               => [ :中断したか?,               :signaled? ],
           '停止したか?'               => [ :停止したか?,               :stopped? ],
           '停止シグナル'              => [ :停止シグナル,              :stopsig ],
           '成功したか?'               => [ :成功したか?,               :success? ],
           '中断シグナル'              => [ :中断シグナル,              :termsig ],
           '整数に変換'                => [ :整数に変換,                :to_i ])
      試験('公開された操作の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        生成物であることを確認(プロセス::状態, あるプロセスの状態)
        別名であることを確認(あるプロセスの状態, 日本語の別名, 元の名前)
        含まれることを確認(プロセス::状態.生成物が持つ公開された操作の一覧, 日本語の別名)
      }
    }

    組(:プロセス_積算時間の操作の試験, 原型: 試験単位::試験事例) {
      資料('子プロセスのシステムCPU時間'  => [ :子プロセスのシステムCPU時間,  :cstime ],
           '子プロセスのシステムCPU時間=' => [ :子プロセスのシステムCPU時間=, :cstime= ],
           '子プロセスのユーザCPU時間'    => [ :子プロセスのユーザCPU時間,    :cutime ],
           '子プロセスのユーザCPU時間='   => [ :子プロセスのユーザCPU時間=,   :cutime= ],
           'システムCPU時間'              => [ :システムCPU時間,              :stime ],
           'システムCPU時間='             => [ :システムCPU時間=,             :stime= ],
           'ユーザCPU時間'                => [ :ユーザCPU時間,                :utime ],
           'ユーザCPU時間='               => [ :ユーザCPU時間=,               :utime= ])
      試験('公開された操作の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        別名であることを確認(プロセス::積算時間.新規, 日本語の別名, 元の名前)
        含まれることを確認(プロセス::積算時間.生成物が持つ公開された操作の一覧, 日本語の別名)
      }
    }

    組(:プロセス_子プロセスの終了の待機の試験, 原型: 試験単位::試験事例) {
      ある子プロセスの終了の待機 = プロセス.切り離す(プロセス.分岐{ プロセス.終了! })
      資料('プロセスの識別番号' => [ :プロセスの識別番号, :pid ])
      試験('公開された操作の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        生成物であることを確認(プロセス::子プロセスの終了の待機, ある子プロセスの終了の待機)
        別名であることを確認(ある子プロセスの終了の待機, 日本語の別名, 元の名前)
        含まれることを確認(プロセス::子プロセスの終了の待機.生成物が持つ公開された操作の一覧, 日本語の別名)
      }
    }

    組(:プロセス_ユーザ識別番号の操作の試験, 原型: 試験単位::試験事例) {
      資料('実効権限の識別番号' => [ :実効権限の識別番号=, :eid= ])
      試験('特異操作の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        別名であることを確認(プロセス::ユーザ識別番号, 日本語の別名, 元の名前)
        含まれることを確認(プロセス::ユーザ識別番号.公開された操作の一覧, 日本語の別名)
      }

      資料('権限を変更'                  => [ :権限を変更,                  :change_privilege ],
           '実効権限の識別番号'          => [ :実効権限の識別番号,          :eid ],
           '実効権限を与える'            => [ :実効権限を与える,            :grant_privilege ],
           'この名前から識別番号を取得'  => [ :この名前から識別番号を取得,  :from_name ],
           '実効権限を入れ替える'        => [ :実効権限を入れ替える,        :re_exchange ],
           '実効権限を入れ替えられるか?' => [ :実効権限を入れ替えられるか?, :re_exchangeable? ],
           '実の識別番号'                => [ :実の識別番号,                :rid ],
           '保存された識別番号を持つか?' => [ :保存された識別番号を持つか?, :sid_available? ],
           '切り換える'                  => [ :切り換える,                  :switch ])
      試験('部の関数の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        別名であることを確認(プロセス::ユーザ識別番号, 日本語の別名, 元の名前)
        含まれることを確認(プロセス::ユーザ識別番号.生成物が持つ秘密の操作の一覧, 日本語の別名)
        含まれることを確認(プロセス::ユーザ識別番号.公開された操作の一覧, 元の名前)
        含まれることを確認(プロセス::ユーザ識別番号.公開された操作の一覧, 日本語の別名)
      }
    }

    組(:プロセス_グループ識別番号の操作の試験, 原型: 試験単位::試験事例) {
      資料('実効権限の識別番号' => [ :実効権限の識別番号=, :eid= ])
      試験('特異操作の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        別名であることを確認(プロセス::グループ識別番号, 日本語の別名, 元の名前)
        含まれることを確認(プロセス::グループ識別番号.公開された操作の一覧, 日本語の別名)
      }

      資料('権限を変更'                  => [ :権限を変更,                  :change_privilege ],
           '実効権限の識別番号'          => [ :実効権限の識別番号,          :eid ],
           '実効権限を与える'            => [ :実効権限を与える,            :grant_privilege ],
           'この名前から識別番号を取得'  => [ :この名前から識別番号を取得,  :from_name ],
           '実効権限を入れ替える'        => [ :実効権限を入れ替える,        :re_exchange ],
           '実効権限を入れ替えられるか?' => [ :実効権限を入れ替えられるか?, :re_exchangeable? ],
           '実の識別番号'                => [ :実の識別番号,                :rid ],
           '保存された識別番号を持つか?' => [ :保存された識別番号を持つか?, :sid_available? ],
           '切り換える'                  => [ :切り換える,                  :switch ])
      試験('部の関数の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        別名であることを確認(プロセス::グループ識別番号, 日本語の別名, 元の名前)
        含まれることを確認(プロセス::グループ識別番号.生成物が持つ秘密の操作の一覧, 日本語の別名)
        含まれることを確認(プロセス::グループ識別番号.公開された操作の一覧, 元の名前)
        含まれることを確認(プロセス::グループ識別番号.公開された操作の一覧, 日本語の別名)
      }
    }

    組(:プロセス_識別番号のシステムコールの操作の試験, 原型: 試験単位::試験事例) {
      資料('実ユーザの識別番号を取得'             => [ :実ユーザの識別番号を取得,             :getuid ],
           '実グループの識別番号を取得'           => [ :実グループの識別番号を取得,           :getgid ],
           '実効ユーザの識別番号を取得'           => [ :実効ユーザの識別番号を取得,           :geteuid ],
           '実効グループの識別番号を取得'         => [ :実効グループの識別番号を取得,         :getegid ],
           '実効権限が設定されている'             => [ :実効権限が設定されている,             :issetugid ],
           'ユーザの識別番号を設定'               => [ :ユーザの識別番号を設定,               :setuid ],
           'グループの識別番号を設定'             => [ :グループの識別番号を設定,             :setgid ],
           '実ユーザの識別番号を設定'             => [ :実ユーザの識別番号を設定,             :setruid ],
           '実グループの識別番号を設定'           => [ :実グループの識別番号を設定,           :setrgid ],
           '実効ユーザの識別番号を設定'           => [ :実効ユーザの識別番号を設定,           :seteuid ],
           '実効グループの識別番号を設定'         => [ :実効グループの識別番号を設定,         :setegid ],
           '実_実効ユーザの識別番号を設定'        => [ :実_実効ユーザの識別番号を設定,        :setreuid ],
           '実_実効グループの識別番号を設定'      => [ :実_実効グループの識別番号を設定,      :setregid ],
           '実_実効_保存ユーザの識別番号を設定'   => [ :実_実効_保存ユーザの識別番号を設定,   :setresuid ],
           '実_実効_保存グループの識別番号を設定' => [ :実_実効_保存グループの識別番号を設定, :setresgid ])
      試験('部の関数の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        別名であることを確認(プロセス::識別番号のシステムコール, 日本語の別名, 元の名前)
        含まれることを確認(プロセス::識別番号のシステムコール.生成物が持つ秘密の操作の一覧, 日本語の別名)
        含まれることを確認(プロセス::識別番号のシステムコール.公開された操作の一覧, 元の名前)
        含まれることを確認(プロセス::識別番号のシステムコール.公開された操作の一覧, 日本語の別名)
      }
    }

    組(:シグナルのシステムコールの操作の試験, 原型: 試験単位::試験事例) {
      資料('一覧'       => [ :一覧,       :list ],
           'シグナル名' => [ :シグナル名, :signame ],
           '捕捉'       => [ :捕捉,       :trap ])
      試験('部の関数の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        別名であることを確認(シグナル, 日本語の別名, 元の名前)
        含まれることを確認(シグナル.生成物が持つ秘密の操作の一覧, 日本語の別名)
        含まれることを確認(シグナル.公開された操作の一覧, 元の名前)
        含まれることを確認(シグナル.公開された操作の一覧, 日本語の別名)
      }
    }
  }
}

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:

