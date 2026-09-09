#!/vendor/bin/sh
#
# Script to set wireless regulatory domain

if [ "$(getprop wifi.regdomain.override.done)" == "1" ]; then
  exit 0
fi

if [ "$(getprop persist.wifi.regdomain.override)" != "" ]; then
  /vendor/bin/iw reg set $(getprop persist.wifi.regdomain.override | tr a-z A-Z)
  setprop wifi.regdomain.override.done 1
  exit 0
fi

/vendor/bin/iw reg set $(getprop gsm.sim.operator.iso-country | tr a-z A-Z  | sed s/,// | cut -c 1-2)
/vendor/bin/iw reg set $(getprop gsm.operator.iso-country | tr a-z A-Z | sed s/,// | cut -c 1-2)

exit 0
