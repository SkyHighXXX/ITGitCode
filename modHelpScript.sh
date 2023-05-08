if [[ $1 == "--date" || $1 == "-d" ]]; then
  date +"%Y-%m-%d"
elif [[ $1 == "--logs" || $1 == "-l" ]]; then
  if [[ -z "$2" ]]; then
    count=100
  else
    count=$2
  fi
  for i in $(seq 1 $count); do
    echo "log${i}.txt created by script.sh on $(date)" > log${i}.txt
  done
elif [[ $1 == "--help" || $1 == "-h" ]]; then
  echo "Usage:"
  echo "  skrypt.sh --date/-d              : display today's date"
  echo "  skrypt.sh --logs/-l [<number>]  : create [<number>] log files"
  echo "  skrypt.sh --help/-h             : display this help message"
else
  echo "Invalid option. Use skrypt.sh --help for usage instructions."
fi

echo "log*.txt" > .gitignore
