#！/bin/sh
# 编译ijkplayer 源码步骤
# 官方教程 https://github.com/Bilibili/ijkplayer
git clone https://github.com/Bilibili/ijkplayer.git ijkplayer-android
cd ijkplayer-android
git checkout -B latest k0.8.8

./init-android.sh


./init-android-openssl.sh


cd android/contrib
./compile-openssl.sh clean
./compile-ffmpeg.sh clean

./compile-openssl.sh all
./compile-ffmpeg.sh all

cd ..
./compile-ijk.sh all