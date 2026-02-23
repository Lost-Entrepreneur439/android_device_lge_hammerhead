#!/system/vendor/bin/sh
#
# Script to setup many things after boot

echo 3000000 > /proc/sys/kernel/sched_min_granularity_ns

echo 100 > /dev/blkio/background/blkio.weight

/vendor/bin/timekeep restore
