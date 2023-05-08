if [[ $1 == "--date" ]]; then
  date +"%Y-%m-%d"
elif [[ $1 == "--logs" ]]; then
  for i in {1..100}; do
    echo "log${i}.txt created by script.sh on $(date)" > log${i}.txt
  done
fi

echo "log*.txt" > .gitignore
