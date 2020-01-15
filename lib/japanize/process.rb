# -*- coding: utf-8 -*-

require 'japanize/core'

要求 'japanize/base'
要求 'japanize/names'

部(プロセス) {
  特異組{
    別名 :中断,                             :abort
    別名 :外部のプログラムを上書き実行する, :exec
    別名 :終了,                             :exit
    別名 :終了!,                            :exit!
    別名 :分岐,                             :fork
    別名 :最後の状態,                       :last_status
    別名 :外部のプログラムを実行する,       :spawn
  }

  別名 :スクリプトの名前,                  :argv0
  別名 :時計から時刻を取得,                :clock_gettime
  別名 :時計から時間分解能を取得,          :clock_getres
  別名 :裏方に回る,                        :daemon
  別名 :切り離す,                          :detach
  別名 :実効グループの識別番号,            :egid
  別名 :実効グループの識別番号=,           :egid=
  別名 :実効ユーザの識別番号,              :euid
  別名 :実効ユーザの識別番号=,             :euid=
  別名 :プロセスの群れの識別番号を取得,    :getpgid
  別名 :プロセスの群れを取得,              :getpgrp
  別名 :優先度を取得,                      :getpriority
  別名 :資源の制限値を取得,                :getrlimit
  別名 :対話操作の識別番号を取得,          :getsid
  別名 :実グループの識別番号,              :gid
  別名 :実グループの識別番号=,             :gid=
  別名 :補助グループの一覧,                :groups
  別名 :補助グループの一覧=,               :groups=
  別名 :所属するグループの一覧を更新,      :initgroups
  別名 :通知,                              :kill
  別名 :補助グループの最大数,              :maxgroups
  別名 :補助グループの最大数=,             :maxgroups=
  別名 :プロセスの識別番号,                :pid
  別名 :親プロセスの識別番号,              :ppid
  別名 :プロセスの群れの識別番号を設定,    :setpgid
  別名 :プロセスの群れを設定,              :setpgrp
  別名 :優先度を設定,                      :setpriority
  別名 :プロセスの表題を設定,              :setproctitle
  別名 :資源の制限値を設定,                :setrlimit
  別名 :対話操作の識別番号を設定,          :setsid
  別名 :積算時間を取得,                    :times
  別名 :実ユーザの識別番号,                :uid
  別名 :実ユーザの識別番号=,               :uid=
  別名 :子プロセスの終了を待機,            :wait
  別名 :子プロセスの終了を待機2,           :wait2
  別名 :全ての子プロセスの終了を待機,      :waitall
  別名 :識別番号の子プロセスの終了を待機,  :waitpid
  別名 :識別番号の子プロセスの終了を待機2, :waitpid2

  部の関数 :スクリプトの名前,
           :時計から時刻を取得,
           :時計から時間分解能を取得,
           :裏方に回る,
           :切り離す,
           :実効グループの識別番号,
           :実効グループの識別番号=,
           :実効ユーザの識別番号,
           :実効ユーザの識別番号=,
           :プロセスの群れの識別番号を取得,
           :プロセスの群れを取得,
           :優先度を取得,
           :資源の制限値を取得,
           :対話操作の識別番号を取得,
           :実グループの識別番号,
           :実グループの識別番号=,
           :補助グループの一覧,
           :補助グループの一覧=,
           :所属するグループの一覧を更新,
           :通知,
           :補助グループの最大数,
           :補助グループの最大数=,
           :プロセスの識別番号,
           :親プロセスの識別番号,
           :プロセスの群れの識別番号を設定,
           :プロセスの群れを設定,
           :優先度を設定,
           :プロセスの表題を設定,
           :資源の制限値を設定,
           :対話操作の識別番号を設定,
           :積算時間を取得,
           :実ユーザの識別番号,
           :実ユーザの識別番号=,
           :子プロセスの終了を待機,
           :子プロセスの終了を待機2,
           :全ての子プロセスの終了を待機,
           :識別番号の子プロセスの終了を待機,
           :識別番号の子プロセスの終了を待機2

  日本語の定数 :時計_実時間,                                   Process::CLOCK_REALTIME             if (defined? Process::CLOCK_REALTIME)
  日本語の定数 :時計_単調増加の経過時間,                       Process::CLOCK_MONOTONIC            if (defined? Process::CLOCK_MONOTONIC)
  日本語の定数 :時計_プロセス単位のCPU時間,                    Process::CLOCK_PROCESS_CPUTIME_ID   if (defined? Process::CLOCK_PROCESS_CPUTIME_ID)
  日本語の定数 :時計_スレッド単位のCPU時間,                    Process::CLOCK_THREAD_CPUTIME_ID    if (defined? Process::CLOCK_THREAD_CPUTIME_ID)
  日本語の定数 :時計_仮想の経過時間,                           Process::CLOCK_VIRTUAL              if (defined? Process::CLOCK_VIRTUAL)
  日本語の定数 :時計_性能解析用の経過時間,                     Process::CLOCK_PROF                 if (defined? Process::CLOCK_PROF)
  日本語の定数 :時計_高速な実時間,                             Process::CLOCK_REALTIME_FAST        if (defined? Process::CLOCK_REALTIME_FAST)
  日本語の定数 :時計_精密な実時間,                             Process::CLOCK_REALTIME_PRECISE     if (defined? Process::CLOCK_REALTIME_PRECISE)
  日本語の定数 :時計_概略の実時間,                             Process::CLOCK_REALTIME_COARSE      if (defined? Process::CLOCK_REALTIME_COARSE)
  日本語の定数 :時計_システムの復帰を伴う実時間,               Process::CLOCK_REALTIME_ALARM       if (defined? Process::CLOCK_REALTIME_ALARM)
  日本語の定数 :時計_高速で単調増加の経過時間,                 Process::CLOCK_MONOTONIC_FAST       if (defined? Process::CLOCK_MONOTONIC_FAST)
  日本語の定数 :時計_精密で単調増加の経過時間,                 Process::CLOCK_MONOTONIC_PRECISE    if (defined? Process::CLOCK_MONOTONIC_PRECISE)
  日本語の定数 :時計_概略で単調増加の経過時間,                 Process::CLOCK_MONOTONIC_COARSE     if (defined? Process::CLOCK_MONOTONIC_COARSE)
  日本語の定数 :時計_未加工で単調増加の経過時間,               Process::CLOCK_MONOTONIC_RAW        if (defined? Process::CLOCK_MONOTONIC_RAW)
  日本語の定数 :時計_近似的で未加工な単調増加の経過時間,       Process::CLOCK_MONOTONIC_RAW_APPROX if (defined? Process::CLOCK_MONOTONIC_RAW_APPROX)
  日本語の定数 :時計_起動時からの経過時間,                     Process::CLOCK_BOOTTIME             if (defined? Process::CLOCK_BOOTTIME)
  日本語の定数 :時計_システムの復帰を伴う起動時からの経過時間, Process::CLOCK_BOOTTIME_ALARM       if (defined? Process::CLOCK_BOOTTIME_ALARM)
  日本語の定数 :時計_連続稼動時間,                             Process::CLOCK_UPTIME               if (defined? Process::CLOCK_UPTIME)
  日本語の定数 :時計_高速な連続稼動時間,                       Process::CLOCK_UPTIME_FAST          if (defined? Process::CLOCK_UPTIME_FAST)
  日本語の定数 :時計_精密な連続稼動時間,                       Process::CLOCK_UPTIME_PRECISE       if (defined? Process::CLOCK_UPTIME_PRECISE)
  日本語の定数 :時計_未加工な連続稼動時間,                     Process::CLOCK_UPTIME_RAW           if (defined? Process::CLOCK_UPTIME_RAW)
  日本語の定数 :時計_近似的で未加工な連続稼動時間,             Process::CLOCK_UPTIME_RAW_APPROX    if (defined? Process::CLOCK_UPTIME_RAW_APPROX)
  日本語の定数 :時計_秒数,                                     Process::CLOCK_SECOND               if (defined? Process::CLOCK_SECOND)

  日本語の定数 :資源の制限値_中断ファイルの大きさ,       Process::RLIMIT_CORE    if (defined? Process::RLIMIT_CORE)
  日本語の定数 :資源の制限値_CPU時間,                    Process::RLIMIT_CPU     if (defined? Process::RLIMIT_CPU)
  日本語の定数 :資源の制限値_データ領域の大きさ,         Process::RLIMIT_DATA    if (defined? Process::RLIMIT_DATA)
  日本語の定数 :資源の制限値_ファイルの大きさ,           Process::RLIMIT_FSIZE   if (defined? Process::RLIMIT_FSIZE)
  日本語の定数 :資源の制限値_ファイル数,                 Process::RLIMIT_NOFILE  if (defined? Process::RLIMIT_NOFILE)
  日本語の定数 :資源の制限値_スタック領域の大きさ,       Process::RLIMIT_STACK   if (defined? Process::RLIMIT_STACK)
  日本語の定数 :資源の制限値_仮想記憶領域の大きさ,       Process::RLIMIT_AS      if (defined? Process::RLIMIT_AS)
  日本語の定数 :資源の制限値_常駐化する記憶領域の大きさ, Process::RLIMIT_MEMLOCK if (defined? Process::RLIMIT_MEMLOCK)
  日本語の定数 :資源の制限値_プロセス数,                 Process::RLIMIT_NPROC   if (defined? Process::RLIMIT_NPROC)
  日本語の定数 :資源の制限値_実記憶領域の大きさ,         Process::RLIMIT_RSS     if (defined? Process::RLIMIT_RSS)
  日本語の定数 :資源の制限値_ソケットの作業領域の大きさ, Process::RLIMIT_SBSIZE  if (defined? Process::RLIMIT_SBSIZE)

  日本語の定数 :資源の制限値が無制限, Process::RLIM_INFINITY
  日本語の定数 :資源の制限値が設定値, Process::RLIM_SAVED_CUR
  日本語の定数 :資源の制限値が限界値, Process::RLIM_SAVED_MAX

  日本語の定数 :優先度の対象がプロセス,       Process::PRIO_PROCESS
  日本語の定数 :優先度の対象がプロセスの群れ, Process::PRIO_PGRP
  日本語の定数 :優先度の対象がユーザ,         Process::PRIO_USER

  日本語の定数 :待機で遮られない,               Process::WNOHANG
  日本語の定数 :待機で未追跡の子プロセスが対象, Process::WUNTRACED

  組(状態) {
    別名 :中断ファイルを出力したか?, :coredump?
    別名 :終了したか?,               :exited?
    別名 :終了状態,                  :exitstatus
    # 別名 :検査,                    :inspect # 物で定義済み
    別名 :プロセスの識別番号,        :pid
    別名 :中断したか?,               :signaled?
    別名 :停止したか?,               :stopped?
    別名 :停止シグナル,              :stopsig
    別名 :成功したか?,               :success?
    別名 :中断シグナル,              :termsig
    別名 :整数に変換,                :to_i
    # 別名 :文字列に変換,            :to_s    # 物で定義済み
  }

  組(積算時間) {
    別名 :子プロセスのシステムCPU時間,  :cstime
    別名 :子プロセスのシステムCPU時間=, :cstime=
    別名 :子プロセスのユーザCPU時間,    :cutime
    別名 :子プロセスのユーザCPU時間=,   :cutime=
    別名 :システムCPU時間,              :stime
    別名 :システムCPU時間=,             :stime=
    別名 :ユーザCPU時間,                :utime
    別名 :ユーザCPU時間=,               :utime=
  }

  組(子プロセスの終了の待機) {
    別名 :プロセスの識別番号, :pid
  }

  部(ユーザ識別番号) {
    特異組{
      別名 :実効権限の識別番号=, :eid=
    }

    別名 :権限を変更,                  :change_privilege
    別名 :実効権限の識別番号,          :eid
    別名 :実効権限を与える,            :grant_privilege
    別名 :この名前から識別番号を取得,  :from_name
    別名 :実効権限を入れ替える,        :re_exchange
    別名 :実効権限を入れ替えられるか?, :re_exchangeable?
    別名 :実の識別番号,                :rid
    別名 :保存された識別番号を持つか?, :sid_available?
    別名 :切り換える,                  :switch

    部の関数 :権限を変更,
             :実効権限の識別番号,
             :実効権限を与える,
             :この名前から識別番号を取得,
             :実効権限を入れ替える,
             :実効権限を入れ替えられるか?,
             :実の識別番号,
             :保存された識別番号を持つか?,
             :切り換える
  }

  部(グループ識別番号) {
    特異組{
      別名 :実効権限の識別番号=, :eid=
    }

    別名 :権限を変更,                  :change_privilege
    別名 :実効権限の識別番号,          :eid
    別名 :実効権限を与える,            :grant_privilege
    別名 :この名前から識別番号を取得,  :from_name
    別名 :実効権限を入れ替える,        :re_exchange
    別名 :実効権限を入れ替えられるか?, :re_exchangeable?
    別名 :実の識別番号,                :rid
    別名 :保存された識別番号を持つか?, :sid_available?
    別名 :切り換える,                  :switch

    部の関数 :権限を変更,
             :実効権限の識別番号,
             :実効権限を与える,
             :この名前から識別番号を取得,
             :実効権限を入れ替える,
             :実効権限を入れ替えられるか?,
             :実の識別番号,
             :保存された識別番号を持つか?,
             :切り換える
  }

  部(識別番号のシステムコール) {
    別名 :実ユーザの識別番号を取得,             :getuid
    別名 :実グループの識別番号を取得,           :getgid
    別名 :実効ユーザの識別番号を取得,           :geteuid
    別名 :実効グループの識別番号を取得,         :getegid
    別名 :実効権限が設定されている,             :issetugid
    別名 :ユーザの識別番号を設定,               :setuid
    別名 :グループの識別番号を設定,             :setgid
    別名 :実ユーザの識別番号を設定,             :setruid
    別名 :実グループの識別番号を設定,           :setrgid
    別名 :実効ユーザの識別番号を設定,           :seteuid
    別名 :実効グループの識別番号を設定,         :setegid
    別名 :実_実効ユーザの識別番号を設定,        :setreuid
    別名 :実_実効グループの識別番号を設定,      :setregid
    別名 :実_実効_保存ユーザの識別番号を設定,   :setresuid
    別名 :実_実効_保存グループの識別番号を設定, :setresgid

    部の関数 :実ユーザの識別番号を取得,
             :実グループの識別番号を取得,
             :実効ユーザの識別番号を取得,
             :実効グループの識別番号を取得,
             :実効権限が設定されている,
             :ユーザの識別番号を設定,
             :グループの識別番号を設定,
             :実ユーザの識別番号を設定,
             :実グループの識別番号を設定,
             :実効ユーザの識別番号を設定,
             :実効グループの識別番号を設定,
             :実_実効ユーザの識別番号を設定,
             :実_実効グループの識別番号を設定,
             :実_実効_保存ユーザの識別番号を設定,
             :実_実効_保存グループの識別番号を設定
  }

  日本語の定数を付加できること :時計_実時間                                   if (defined? Process::CLOCK_REALTIME)
  日本語の定数を付加できること :時計_単調増加の経過時間                       if (defined? Process::CLOCK_MONOTONIC)
  日本語の定数を付加できること :時計_プロセス単位のCPU時間                    if (defined? Process::CLOCK_PROCESS_CPUTIME_ID)
  日本語の定数を付加できること :時計_スレッド単位のCPU時間                    if (defined? Process::CLOCK_THREAD_CPUTIME_ID)
  日本語の定数を付加できること :時計_仮想の経過時間                           if (defined? Process::CLOCK_VIRTUAL)
  日本語の定数を付加できること :時計_性能解析用の経過時間                     if (defined? Process::CLOCK_PROF)
  日本語の定数を付加できること :時計_高速な実時間                             if (defined? Process::CLOCK_REALTIME_FAST)
  日本語の定数を付加できること :時計_精密な実時間                             if (defined? Process::CLOCK_REALTIME_PRECISE)
  日本語の定数を付加できること :時計_概略の実時間                             if (defined? Process::CLOCK_REALTIME_COARSE)
  日本語の定数を付加できること :時計_システムの復帰を伴う実時間               if (defined? Process::CLOCK_REALTIME_ALARM)
  日本語の定数を付加できること :時計_高速で単調増加の経過時間                 if (defined? Process::CLOCK_MONOTONIC_FAST)
  日本語の定数を付加できること :時計_精密で単調増加の経過時間                 if (defined? Process::CLOCK_MONOTONIC_PRECISE)
  日本語の定数を付加できること :時計_概略で単調増加の経過時間                 if (defined? Process::CLOCK_MONOTONIC_COARSE)
  日本語の定数を付加できること :時計_未加工で単調増加の経過時間               if (defined? Process::CLOCK_MONOTONIC_RAW)
  日本語の定数を付加できること :時計_近似的で未加工な単調増加の経過時間       if (defined? Process::CLOCK_MONOTONIC_RAW_APPROX)
  日本語の定数を付加できること :時計_起動時からの経過時間                     if (defined? Process::CLOCK_BOOTTIME)
  日本語の定数を付加できること :時計_システムの復帰を伴う起動時からの経過時間 if (defined? Process::CLOCK_BOOTTIME_ALARM)
  日本語の定数を付加できること :時計_連続稼動時間                             if (defined? Process::CLOCK_UPTIME)
  日本語の定数を付加できること :時計_高速な連続稼動時間                       if (defined? Process::CLOCK_UPTIME_FAST)
  日本語の定数を付加できること :時計_精密な連続稼動時間                       if (defined? Process::CLOCK_UPTIME_PRECISE)
  日本語の定数を付加できること :時計_未加工な連続稼動時間                     if (defined? Process::CLOCK_UPTIME_RAW)
  日本語の定数を付加できること :時計_近似的で未加工な連続稼動時間             if (defined? Process::CLOCK_UPTIME_RAW_APPROX)
  日本語の定数を付加できること :時計_秒数                                     if (defined? Process::CLOCK_SECOND)

  日本語の定数を付加できること :資源の制限値_中断ファイルの大きさ       if (defined? Process::RLIMIT_CORE)
  日本語の定数を付加できること :資源の制限値_CPU時間                    if (defined? Process::RLIMIT_CPU)
  日本語の定数を付加できること :資源の制限値_データ領域の大きさ         if (defined? Process::RLIMIT_DATA)
  日本語の定数を付加できること :資源の制限値_ファイルの大きさ           if (defined? Process::RLIMIT_FSIZE)
  日本語の定数を付加できること :資源の制限値_ファイル数                 if (defined? Process::RLIMIT_NOFILE)
  日本語の定数を付加できること :資源の制限値_スタック領域の大きさ       if (defined? Process::RLIMIT_STACK)
  日本語の定数を付加できること :資源の制限値_仮想記憶領域の大きさ       if (defined? Process::RLIMIT_AS)
  日本語の定数を付加できること :資源の制限値_常駐化する記憶領域の大きさ if (defined? Process::RLIMIT_MEMLOCK)
  日本語の定数を付加できること :資源の制限値_プロセス数                 if (defined? Process::RLIMIT_NPROC)
  日本語の定数を付加できること :資源の制限値_実記憶領域の大きさ         if (defined? Process::RLIMIT_RSS)
  日本語の定数を付加できること :資源の制限値_ソケットの作業領域の大きさ if (defined? Process::RLIMIT_SBSIZE)

  日本語の定数を付加できること :資源の制限値が無制限,
                               :資源の制限値が設定値,
                               :資源の制限値が限界値,
                               :優先度の対象がプロセス,
                               :優先度の対象がプロセスの群れ,
                               :優先度の対象がユーザ,
                               :待機で遮られない,
                               :待機で未追跡の子プロセスが対象,
                               :状態,
                               :積算時間,
                               :ユーザ識別番号,
                               :グループ識別番号,
                               :識別番号のシステムコール
}

部(シグナル) {
  別名 :一覧,       :list
  別名 :シグナル名, :signame
  別名 :捕捉,       :trap

  部の関数 :一覧,
           :シグナル名,
           :捕捉
}

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
