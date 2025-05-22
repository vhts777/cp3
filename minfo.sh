[ "$1" = hostname ] && (hostname; exit; )
[ "$1" = uptime ] && (uptime; exit; )
[ "$1" = disk ] && (df -h /; exit; )
[ "$1" = all ] && echo "$(hostname) | $(uptime -p) | $(df -h / | awk 'NR==2 {print $1, $2, $3, $4, $5, $6}')"


