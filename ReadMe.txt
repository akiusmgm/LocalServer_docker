#  dyserver（仮）

## 利用方法
1．docker を起動
2. run.bat を実行
3. localhost へアクセスし、利用する。
4．2．のwindow にて、続行することで終了処理が行われる。

※sqlが立ち上がるのに時間がかかる場合があるため、起動直後のエラーは数分待てば直る可能性あり。

## 警告解除
bat : （実行初回時）詳細情報⇒実行

## 環境
前提：docker（docker-compose） が使える

    run.bat　：起動、停止用
        [docer-compose up -d] =(続行)=> [docker-compose down]
        初回起動ではイメージ生成辺りも行われる。
    localhost/htdocs　：HTML,PHP用
        コンテンツ置き場
    localhost/cgi-bin　：CGI用(python, perl)
        ここに入っているものはhttp://localhost/cgi-bin/~~で利用可能。
    mysql/intdb/ : データベースにデータを入れる用。
        初回起動時に（volumeにデータがない場合に？）、（mysqlコンテナで）実行する。（.sh, .sql, .sql.gz が有効、アルファベット順に実行）

    remove_volume.bat　：データベースリセット用
        [docker-compose down --volumes] 　volumeの削除（とコンテナの停止）
    run_build : Dockerfile修正時のrebuild用（run も行う）
         [docker-compose up -d --force-recreate --build]

    .env: 環境変数設定（mysqlのアカウントあたりの設定）


--log-------------------------------------------

20200909
以前のDockerfileをベースに、sqlを追加してみた。
    mysql:host=mysql
    port=3306
で接続出来るはず？
127.0.0.1:3306で繋ぎたい場合、composeで繋げるのでなく同一コンテナで構築したりする必要あるっぽい？
接続成功例：http://localhost/test/sqltest.php 
接続失敗例：http://localhost/test/sqltest2.php 







