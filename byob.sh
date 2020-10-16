#!/bin/bash
clear
echo "  ____   __     __   ____    ____       _____                                     ";
echo " |  _ \  \ \   / /  / __ \  |  _ \     / ____|                                    ";
echo " | |_) |  \ \_/ /  | |  | | | |_) |   | (___     ___   _ __  __   __   ___   _ __ ";
echo " |  _ <    \   /   | |  | | |  _ <     \___ \   / _ \ | '__| \ \ / /  / _ \ | '__|";
echo " | |_) |    | |    | |__| | | |_) |    ____) | |  __/ | |     \ V /  |  __/ | |   ";
echo " |____/     |_|     \____/  |____/    |_____/   \___| |_|      \_/    \___| |_|   ";
echo "                                                                                  ";
echo "                                                                                  ";
read -p "State your action [start/stop/follow]" act
case $act in
    run|start)
    sudo systemctl start byob-server.service
    ;;
    halt|stop)
    sudo systemctl stop byob-server.service
    ;;
    inspect|follow)
    journalctl byob-server.service -f
    ;;
esac