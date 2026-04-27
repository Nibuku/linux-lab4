#!/usr/bin/env bash
set -euo pipefail

cd /opt/lab4-service/html 

if [ ! -f index.html ]; then
    cat > index.html << EOF
<!DOCTYPE html>
<html>
<head><title>Lab 4</title></head>
<body>
<h1> Linux Lab4</h1>
<h3>Budyuk</h3>
</body>
</html>
EOF
fi
exec python3 -m http.server 8000 --bind 0.0.0.0
