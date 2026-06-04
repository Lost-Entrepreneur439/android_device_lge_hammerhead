#!/system/vendor/bin/sh
#
# Script to setup many things after boot

echo 3000000 > /proc/sys/kernel/sched_min_granularity_ns

echo 100 > /dev/blkio/background/blkio.weight

echo 4 > /proc/sys/vm/kswapd_threads

# Boost cpus with active kswapd threads
echo $(pgrep kswapd0:0) > /dev/cpuctl/top-app/tasks
echo $(pgrep kswapd0:1) > /dev/cpuctl/top-app/tasks
echo $(pgrep kswapd0:2) > /dev/cpuctl/top-app/tasks
echo $(pgrep kswapd0:3) > /dev/cpuctl/top-app/tasks

/vendor/bin/timekeep restore
