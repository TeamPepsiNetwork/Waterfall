#!/bin/bash

./waterfall b

cp ./Waterfall-Proxy/bootstrap/target/Waterfall.jar /home/daporkchop/192.168.1.119/Minecraft/Servers/mc.pepsi.team/Proxy/Waterfall.jar

cd ./Waterfall-Proxy/module/
for dir in */
do
    cd $dir
    cd target/
    cp *.jar /home/daporkchop/192.168.1.119/Minecraft/Servers/mc.pepsi.team/Proxy/modules/
    cd ../..
done
cd ../..

echo "Done!"
