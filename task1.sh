pid=$(ps aux | grep "[b]ash infinite.sh" | awk '{print $2}')
if [[ -z "$pid" ]]; then
  echo "Process infinite.sh not running."
else
  kill -9 $pid
  echo "Process infinite.sh with pid: $pid is killed."
fi
