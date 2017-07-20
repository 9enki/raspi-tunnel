# raspi-tunnel

## 概要
- raspiとグローバルIPを持つec2等の信頼できるサーバの間にトンネルを掘ります。
- raspiが再起動しても大丈夫です。
- tmuxがインストールされていることが前提です。

## 準備
- tunnel.shの[user]、[ip address]にec2等の情報を入れる。[user]は例えばec2-user、[ip address]はec2のグローバルIPを入力する。
- tunnel.shの内容を/etc/rc.localに追記して、rcをenableして、raspiを再起動。

## 実行
- [user]@[ip address]にsshでログインする
- ssh先で、自分の8022番にsshすればraspiにsshで入れる`ssh -i [your pem location] -p 8022 pi@localhost`
