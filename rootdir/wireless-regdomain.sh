#!/vendor/bin/sh
#
# Script to set wireless regulatory domain

/vendor/bin/iw reg set $(getprop gsm.sim.operator.iso-country | tr a-z A-Z  | sed s/,// | cut -c 1-2)
/vendor/bin/iw reg set $(getprop gsm.operator.iso-country | tr a-z A-Z | sed s/,// | cut -c 1-2)

exit 0
