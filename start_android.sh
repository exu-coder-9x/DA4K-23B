#!/data/data/com.termux/files/usr/bin/bash
# D4K3 24B quick start for Termux + Orbot
set -e
cd "$(dirname "$0")"
if [ ! -f .env ]; then
  echo "Copying .env.example → .env  (edit it and add your API keys)"
  cp .env.example .env
fi
echo "Make sure Orbot is running (SOCKS 127.0.0.1:9050)"
echo "Starting D4K3 24B on http://localhost:8501 ..."
exec streamlit run ui.py --server.port=8501 --server.address=0.0.0.0
