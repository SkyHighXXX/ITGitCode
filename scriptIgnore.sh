if [[ $1 == "--date" ]]; then
  date +"%Y-%m-%d"
fi

echo "log*.txt" > .gitignore
