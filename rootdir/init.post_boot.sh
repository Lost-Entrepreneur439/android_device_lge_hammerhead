#!/system/vendor/bin/sh
#
# Script to setup many things after boot

echo 3000000 > /proc/sys/kernel/sched_min_granularity_ns
echo 52428800 > /proc/sys/vm/dirty_bytes
echo 4194304 > /proc/sys/vm/dirty_background_bytes
