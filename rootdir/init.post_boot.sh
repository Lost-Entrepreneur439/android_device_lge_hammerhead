#!/system/vendor/bin/sh
#
# Script to setup many things after boot

echo 3000000 > /proc/sys/kernel/sched_min_granularity_ns

echo 100 > /dev/blkio/background/blkio.weight

echo 4 > /proc/sys/vm/kswapd_threads
echo 300 > /proc/sys/vm/watermark_scale_factor

/vendor/bin/timekeep restore
