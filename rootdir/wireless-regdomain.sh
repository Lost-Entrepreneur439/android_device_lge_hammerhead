#!/vendor/bin/sh
#
# Script to set wireless regulatory domain

/vendor/bin/iw reg set $(getprop gsm.sim.operator.iso-country | tr a-z A-Z)
/vendor/bin/iw reg set $(getprop gsm.operator.iso-country | tr a-z A-Z