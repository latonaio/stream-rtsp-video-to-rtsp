# stream-rtsp-video-to-rtsp
stream-rtsp-video-to-rtsp は、RTSP方式で受け取った画像データを、RTSP方式で配信するマイクロサービスです。  
本マイクロサービスは、[rtsp-simple-server](https://github.com/aler9/rtsp-simple-server)を参照しています。  

### 動作環境  
* Intel/ARM CPU
* Golang Runtime

### 使用方法

1. 本レポジトリをダウンロードします。
   ```bash 
   $ git clone https://github.com/latonaio/rtsp-simple-server
   ```
3. ディレクトリを移動します。
   ```bash
   $ cd rtsp-simple-server/
   ```
4. 以下のコマンドで配信が開始されます。  
   ```bash
   $ GO111MODULE=on go run *.go
   ```

### 設定ファイル
任意の設定を行う際は、本レポジトリの rtsp-simple-server.yml を変更してください。  

##### portの指定
portの指定は、設定ファイルの `rtspAddress` で指定可能です。

##### 映像ソースの追加
映像ソースの追加は、以下の手順で行うことができます。  
   1. 設定ファイルにおける `paths` に IPカメラ、もしくは rtspサーバー の情報を追加します。
   ```yaml
   paths:
     camera/1:
      source: rtsp://192.168.128.100:8554/ds-test
      sourceOnDemand: yes
     camera/2:
      source: rtsp://192.168.128.120:8554/ds-test
      sourceOnDemand: yes
   ```
   2. 1のように設定した場合、以下のアクセスが可能となります。  
      - `rtsp://localhost:8995/camera/1`  
      - `rtsp://localhost:8995/camera/2`  

