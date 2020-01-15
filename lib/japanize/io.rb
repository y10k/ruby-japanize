# -*- coding: utf-8 -*-

require 'japanize/core'

要求 'japanize/base'
要求 'japanize/names'

組(入出力) {
  特異組{
    別名 :バイナリ形式で読む,                   :binread
    別名 :バイナリ形式で書く,                   :binwrite
    別名 :転写する,                             :copy_stream
    別名 :ファイル記述子から生成,               :for_fd
    別名 :開く,                                 :open
    別名 :一つずつ,                             :foreach
    別名 :配管の対を作成,                       :pipe
    別名 :外部のプログラムを実行して配管を開く, :popen
    別名 :読む,                                 :read
    別名 :全行を読む,                           :readlines
    別名 :準備ができた入出力を選択,             :select
    別名 :システムコールで開く,                 :sysopen
    別名 :可能なら変換,                         :try_convert
    別名 :書く,                                 :write
  }

  別名 :助言,                                     :advise
  別名 :自動的に閉じる=,                          :autoclose=
  別名 :自動的に閉じるか?,                        :autoclose?
  別名 :バイナリ形式,                             :binmode
  別名 :バイナリ形式か?,                          :binmode?
  # 別名 :複写,                                   :clone   # 物で定義済み
  # 別名 :複製,                                   :dup     # 物で定義済み
  別名 :閉じる,                                   :close
  別名 :上書き実行時に閉じる=,                    :close_on_exec=
  別名 :上書き実行時に閉じるか?,                  :close_on_exec?
  別名 :読み込み口を閉じる,                       :close_read
  別名 :書き込み口を閉じる,                       :close_write
  別名 :閉じたか?,                                :closed?
  別名 :個別に,                                   :each
  別名 :行毎に,                                   :each_line
  別名 :バイト値毎に,                             :each_byte
  別名 :文字毎に,                                 :each_char
  別名 :符号点毎に,                               :each_codepoint
  別名 :終端,                                     :eof
  別名 :終端か?,                                  :eof?
  別名 :外部文字符号化方式,                       :external_encoding
  別名 :ファイルの制御,                           :fcntl
  別名 :ファイルの内容を同期する,                 :fdatasync
  別名 :ファイル記述子,                           :fileno
  別名 :整数に変換,                               :to_i
  別名 :書き込む,                                 :flush
  別名 :ファイルを同期する,                       :fsync
  別名 :バイト値を取得,                           :getbyte
  別名 :文字を取得,                               :getc
  別名 :行を取得,                                 :gets
  別名 :内部文字符号化方式,                       :internal_encoding
  別名 :入出力を制御,                             :ioctl
  別名 :端末装置の一種,                           :isatty
  別名 :端末装置か?,                              :tty?
  別名 :行番号,                                   :lineno
  別名 :行番号=,                                  :lineno=
  別名 :行の一覧,                                 :lines
  別名 :プロセスの識別番号,                       :pid
  別名 :位置を告げよ,                             :tell
  別名 :位置,                                     :pos
  別名 :位置=,                                    :pos=
  別名 :この位置で読む,                           :pread
  別名 :印字,                                     :print
  別名 :整形して印字,                             :printf
  別名 :文字を出力,                               :putc
  別名 :行を出力,                                 :puts
  別名 :この位置で書く,                           :pwrite
  別名 :読む,                                     :read
  別名 :遮られずに読む,                           :read_nonblock
  別名 :バイト値を読む,                           :readbyte
  別名 :文字を読む,                               :readchar
  別名 :行を読む,                                 :readline
  別名 :全行を読む,                               :readlines
  別名 :準備された分だけ読む,                     :readpartial
  別名 :開き直す,                                 :reopen
  別名 :巻き戻す,                                 :rewind
  別名 :移動,                                     :seek
  別名 :文字符号化方式を設定,                     :set_encoding
  別名 :バイト順序の標識から文字符号化方式を設定, :set_encoding_by_bom if (公開された操作は定義済みか? :set_encoding_by_bom)
  別名 :状態を取得,                               :stat
  別名 :同期,                                     :sync
  別名 :同期=,                                    :sync=
  別名 :システムコールで読む,                     :sysread
  別名 :システムコールで移動,                     :sysseek
  別名 :システムコールで書く,                     :syswrite
  別名 :入出力に変換,                             :to_io
  別名 :バイト値を戻す,                           :ungetbyte
  別名 :文字を戻す,                               :ungetc
  別名 :書く,                                     :write
  別名 :遮られずに書く,                           :write_nonblock

  日本語の定数 :先頭から移動,       IO::SEEK_SET
  日本語の定数 :現在の位置から移動, IO::SEEK_CUR
  日本語の定数 :末尾から移動,       IO::SEEK_END
  日本語の定数 :次の内容へ移動,     IO::SEEK_DATA if (defined? IO::SEEK_DATA) # Linux 3.1以降で利用可能
  日本語の定数 :次の空隙へ移動,     IO::SEEK_HOLE if (defined? IO::SEEK_HOLE) # Linux 3.1以降で利用可能
}

組(ファイル) {
  特異組{
    別名 :ファイルへの絶対的な経路,                 :absolute_path
    別名 :ファイルへの絶対的な経路か?,              :absolute_path? if (公開された操作は定義済みか? :absolute_path?)
    別名 :最終利用時刻,                             :atime
    別名 :ファイル名を取得,                         :basename
    別名 :作成時刻,                                 :birthtime
    別名 :固定長で入出力する装置か?,                :blockdev?
    別名 :文字単位で入出力する装置か?,              :chardev?
    別名 :操作許可を変更,                           :chmod
    別名 :所有者を変更,                             :chown
    別名 :最終状態変更時刻,                         :ctime
    別名 :削除,                                     :delete
    別名 :結び付きを解く,                           :unlink
    別名 :ディレクトリか?,                          :directory?
    別名 :ディレクトリ名を取得,                     :dirname
    別名 :大きさが零か?,                            :zero?
    別名 :空か?,                                    :empty?
    別名 :実行できるか?,                            :executable?
    別名 :実の所属で実行できるか?,                  :executable_real?
    別名 :存在するか?,                              :exist?
    別名 :ファイルへの経路を展開,                   :expand_path
    別名 :拡張子を取得,                             :extname
    別名 :ファイルか?,                              :file?
    別名 :名前の一致,                               :fnmatch
    別名 :名前が一致するか?,                        :fnmatch?
    別名 :ファイルの種類,                           :ftype
    別名 :実効グループに所属するか?,                :grpowned?
    別名 :同一のファイルか?,                        :identical?
    別名 :結合,                                     :join
    別名 :連係先の操作許可を変更,                   :lchmod
    別名 :連係先の所有者を変更,                     :lchown
    別名 :結び付ける,                               :link
    別名 :連係先の状態を取得,                       :lstat
    別名 :連係先の利用更新時刻を変更,               :lutime
    別名 :配管ファイルを作成,                       :mkfifo
    別名 :最終更新時刻,                             :mtime
    別名 :開く,                                     :open
    別名 :所有しているか?,                          :owned?
    別名 :ファイルへの経路,                         :path
    別名 :配管か?,                                  :pipe?
    別名 :読めるか?,                                :readable?
    別名 :実の所属で読めるか?,                      :readable_real?
    別名 :連係する経路を読む,                       :readlink
    別名 :ディレクトリまで実在するファイルへの経路, :realdirpath
    別名 :実在するファイルへの経路,                 :realpath
    別名 :名前を変更,                               :rename
    別名 :実効グループを変更するか?,                :setgid?
    別名 :実効ユーザを変更するか?,                  :setuid?
    別名 :大きさ,                                   :size
    別名 :内容があるか?,                            :size?
    別名 :ソケットか?,                              :socket?
    別名 :分割,                                     :split
    別名 :状態を取得,                               :stat
    別名 :貼り付くか?,                              :sticky?
    別名 :名前で連係する,                           :symlink
    別名 :名前による連係か?,                        :symlink?
    別名 :切り捨てる,                               :truncate
    別名 :作成時の操作許可の取捨選択,               :umask
    別名 :利用更新時刻を変更,                       :utime
    別名 :誰でも読めるか?,                          :world_readable?
    別名 :誰でも書けるか?,                          :world_writable?
    別名 :書けるか?,                                :writable?
    別名 :実の所属で書けるか?,                      :writable_real?
  }

  別名 :最終利用時刻,           :atime
  別名 :作成時刻,               :birthtime
  別名 :操作許可を変更,         :chmod
  別名 :所有者を変更,           :chown
  別名 :最終状態変更時刻,       :ctime
  別名 :排他制御,               :flock
  別名 :連係先の状態を取得,     :lstat
  別名 :最終更新時刻,           :mtime
  別名 :ファイルへの経路,       :path
  別名 :ファイルへの経路に変換, :to_path
  別名 :大きさ,                 :size
  別名 :切り捨てる,             :truncate

  日本語の定数 :区切り文字,                         File::SEPARATOR
  日本語の定数 :もう一つの区切り文字,               File::ALT_SEPARATOR
  日本語の定数 :実行ファイルの探索経路の区切り文字, File::PATH_SEPARATOR

  部(定数) {
    日本語の定数 :追記,                                         File::Constants::APPEND
    日本語の定数 :バイナリ,                                     File::Constants::BINARY
    日本語の定数 :作成,                                         File::Constants::CREAT
    日本語の定数 :すぐに書き込む,                               File::Constants::DIRECT
    日本語の定数 :内容を同期,                                   File::Constants::DSYNC
    日本語の定数 :排他,                                         File::Constants::EXCL
    日本語の定数 :名前の一致で大文字と小文字を無視,             File::Constants::FNM_CASEFOLD
    日本語の定数 :名前の一致で設定ファイルにを含む,             File::Constants::FNM_DOTMATCH
    日本語の定数 :名前の一致で拡張特殊文字を使う,               File::Constants::FNM_EXTGLOB
    日本語の定数 :名前の一致で無効化文字を使わない,             File::Constants::FNM_NOESCAPE
    日本語の定数 :名前の一致で区切られた範囲に限定,             File::Constants::FNM_PATHNAME
    日本語の定数 :名前の一致で基盤に従って大文字と小文字を無視, File::Constants::FNM_SYSCASE
    日本語の定数 :排他制御で排他,                               File::Constants::LOCK_EX
    日本語の定数 :排他制御で遮られない,                         File::Constants::LOCK_NB
    日本語の定数 :排他制御で共有,                               File::Constants::LOCK_SH
    日本語の定数 :排他制御で開放,                               File::Constants::LOCK_UN
    日本語の定数 :利用時刻を更新しない,                         File::Constants::NOATIME
    日本語の定数 :端末装置を制御しない,                         File::Constants::NOCTTY
    日本語の定数 :連係を追跡しない,                             File::Constants::NOFOLLOW
    日本語の定数 :遮られない,                                   File::Constants::NONBLOCK
    日本語の定数 :常に無効な装置,                               File::Constants::NULL
    日本語の定数 :読み込み専用,                                 File::Constants::RDONLY
    日本語の定数 :読み書き両用,                                 File::Constants::RDWR
    日本語の定数 :読み込みを同期,                               File::Constants::RSYNC        if (defined? File::Constants::RSYNC)        # O_RSYNCが指定できる時だけ定義される
    日本語の定数 :削除を共有,                                   File::Constants::SHARE_DELETE if (defined? File::Constants::SHARE_DELETE) # O_SHARE_DELETEが指定できる時だけ定義される
    日本語の定数 :同期,                                         File::Constants::SYNC
    日本語の定数 :一時ファイル,                                 File::Constants::TMPFILE
    日本語の定数 :切り捨て,                                     File::Constants::TRUNC
    日本語の定数 :書き込み専用,                                 File::Constants::WRONLY

    日本語の定数を付加できること :追記,
                                 :バイナリ,
                                 :作成,
                                 :すぐに書き込む,
                                 :内容を同期,
                                 :排他,
                                 :名前の一致で大文字と小文字を無視,
                                 :名前の一致で設定ファイルにを含む,
                                 :名前の一致で拡張特殊文字を使う,
                                 :名前の一致で無効化文字を使わない,
                                 :名前の一致で区切られた範囲に限定,
                                 :名前の一致で基盤に従って大文字と小文字を無視,
                                 :排他制御で排他,
                                 :排他制御で遮られない,
                                 :排他制御で共有,
                                 :排他制御で開放,
                                 :利用時刻を更新しない,
                                 :端末装置を制御しない,
                                 :連係を追跡しない,
                                 :遮られない,
                                 :常に無効な装置,
                                 :読み込み専用,
                                 :読み書き両用,
                                 :読み込みを同期,
                                 :削除を共有,
                                 :同期,
                                 :一時ファイル,
                                 :切り捨て,
                                 :書き込み専用
  }
  付加 定数

  組(状態) {
    別名 :最終利用時刻,                     :atime
    別名 :作成時刻,                         :birthtime
    別名 :入出力単位,                       :blksize
    別名 :固定長で入出力する装置か?,        :blockdev?
    別名 :入出力単位の数,                   :blocks
    別名 :文字単位で入出力する装置か?,      :chardev?
    別名 :最終状態変更時刻,                 :ctime
    別名 :ファイルシステムの装置の番号,     :dev
    別名 :ファイルシステムの装置の主番号,   :dev_major
    別名 :ファイルシステムの装置の副番号,   :dev_minor
    別名 :ディレクトリか?,                  :directory?
    別名 :実行できるか?,                    :executable?
    別名 :実の所属で実行できるか?,          :executable_real?
    別名 :ファイルか?,                      :file?
    別名 :ファイルの種類,                   :ftype
    別名 :グループ識別番号,                 :gid
    別名 :実効グループに所属するか?,        :grpowned?
    別名 :i_node番号,                       :ino
    別名 :操作許可,                         :mode
    別名 :最終更新時刻,                     :mtime
    別名 :結び付きの数,                     :nlink
    別名 :所有しているか?,                  :owned?
    別名 :配管か?,                          :pipe?
    別名 :装置の番号,                       :rdev
    別名 :装置の主番号,                     :rdev_major
    別名 :装置の副番号,                     :rdev_minor
    別名 :読めるか?,                        :readable?
    別名 :実の所属で読めるか?,              :readable_real?
    別名 :実効グループを変更するか?,        :setgid?
    別名 :実効ユーザを変更するか?,          :setuid?
    別名 :大きさ,                           :size
    別名 :内容があるか?,                    :size?
    別名 :ソケットか?,                      :socket?
    別名 :貼り付くか?,                      :sticky?
    別名 :名前による連係か?,                :symlink?
    別名 :ユーザ識別番号,                   :uid
    別名 :誰でも読めるか?,                  :world_readable?
    別名 :誰でも書けるか?,                  :world_writable?
    別名 :書けるか?,                        :writable?
    別名 :実の所属で書けるか?,              :writable_real?
    別名 :大きさが零か?,                    :zero?
  }
}

組(ディレクトリ) {
  特異組{
    別名 :名前の一致,                 :glob
    別名 :作業ディレクトリの変更,     :chdir
    別名 :ファイル名の一覧,           :children
    別名 :最上位のディレクトリを変更, :chroot
    別名 :削除,                       :delete
    別名 :結び付きを解く,             :unlink
    別名 :ファイル名毎に,             :each_child
    別名 :空か?,                      :empty?
    別名 :項目の一覧,                 :entries
    別名 :存在するか?,                :exist?
    別名 :一つずつ,                   :foreach
    別名 :作業ディレクトリを取得,     :getwd
    別名 :作業ディレクトリ,           :pwd
    別名 :本拠,                       :home
    別名 :作成,                       :mkdir
    別名 :開く,                       :open
  }

  別名 :ファイル名の一覧,       :children
  別名 :閉じる,                 :close
  別名 :個別に,                 :each
  別名 :ファイル名毎に,         :each_child
  別名 :ファイル記述子,         :fileno
  # 別名 :検査,                 :inspect    # 物で定義済み
  別名 :ファイルへの経路,       :path
  別名 :ファイルへの経路に変換, :to_path
  別名 :位置を告げよ,           :tell
  別名 :位置,                   :pos
  別名 :位置=,                  :pos=
  別名 :移動,                   :seek
  別名 :読む,                   :read
  別名 :巻き戻す,               :rewind
}

部(ファイルの検査) {
  別名 :固定長で入出力する装置か?,   :blockdev?
  別名 :文字単位で入出力する装置か?, :chardev?
  別名 :ディレクトリか?,             :directory?
  別名 :大きさが零か?,               :zero?
  別名 :空か?,                       :empty?
  別名 :実行できるか?,               :executable?
  別名 :実の所属で実行できるか?,     :executable_real?
  別名 :存在するか?,                 :exist?
  別名 :ファイルか?,                 :file?
  別名 :実効グループに所属するか?,   :grpowned?
  別名 :同一のファイルか?,           :identical?
  別名 :所有しているか?,             :owned?
  別名 :配管か?,                     :pipe?
  別名 :読めるか?,                   :readable?
  別名 :実の所属で読めるか?,         :readable_real?
  別名 :実効グループを変更するか?,   :setgid?
  別名 :実効ユーザを変更するか?,     :setuid?
  別名 :大きさ,                      :size
  別名 :内容があるか?,               :size?
  別名 :ソケットか?,                 :socket?
  別名 :貼り付くか?,                 :sticky?
  別名 :名前による連係か?,           :symlink?
  別名 :誰でも読めるか?,             :world_readable?
  別名 :誰でも書けるか?,             :world_writable?
  別名 :書けるか?,                   :writable?
  別名 :実の所属で書けるか?,         :writable_real?

  部の関数 :固定長で入出力する装置か?,
           :文字単位で入出力する装置か?,
           :ディレクトリか?,
           :大きさが零か?,
           :空か?,
           :実行できるか?,
           :実の所属で実行できるか?,
           :存在するか?,
           :ファイルか?,
           :実効グループに所属するか?,
           :同一のファイルか?,
           :所有しているか?,
           :配管か?,
           :読めるか?,
           :実の所属で読めるか?,
           :実効グループを変更するか?,
           :実効ユーザを変更するか?,
           :大きさ,
           :内容があるか?,
           :ソケットか?,
           :貼り付くか?,
           :名前による連係か?,
           :誰でも読めるか?,
           :誰でも書けるか?,
           :書けるか?,
           :実の所属で書けるか?
}

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
