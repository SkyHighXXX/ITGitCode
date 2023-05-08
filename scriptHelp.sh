if [[ $1 == "--date" ]]; then
  date +"%Y-%m-%d"
elif [[ $1 == "--logs" ]]; then
  for i in {1..100}; do
    echo "log${i}.txt created by script.sh on $(date)" > log${i}.txt
  done
elif [[ $1 == "--logs" && $2 =~ ^[0-9]+$ ]]; then
  for i in $(seq 1 $2); do
    echo "log${i}.txt created by script.sh on $(date)" > log${i}.txt
  done
elif [[ $1 == "--help" ]]; then
  echo "Usage:"
  echo "  skrypt.sh --date                : display today's date"
  echo "  skrypt.sh --logs                : create 100 log files"
  echo "  skrypt.sh --logs <number>       : create <number> log files"
  echo "  skrypt.sh --help                : display this help message"
else
  echo "Invalid option. Use skrypt.sh --help for usage instructions."
fi

echo "log*.txt" > .gitignore
