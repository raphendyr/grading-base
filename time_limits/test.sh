#!/bin/dash

ctime=2
wtime=10

ulimit -S -c 0

./_limit_wall 20 "WALL EXCEEDED" \
./_limit_cpu 2 "CPU EXCEEDED" \
"$@"
ret=$?
echo "ret=$ret"
exit $ret
