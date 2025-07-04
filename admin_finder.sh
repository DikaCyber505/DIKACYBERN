#!/bin/bash
read -p "Masukkan URL target (cth: https://target.com): " target

paths=("/admin" "/admin/login" "/admin.php" "/administrator" "/adminpanel")
for path in "${paths[@]}"
do
    full_url="$target$path"
    status=$(curl -o /dev/null -s -w "%{http_code}" "$full_url")
    if [ "$status" == "200" ]; then
        echo "[✓] Ditemukan: $full_url"
    else
        echo "[×] Tidak ditemukan: $full_url"
    fi
done
