#!/bin/bash
cd "$(dirname "$0")"

if [ ! -d "venv" ]; then
    echo "[ERROR] venv not found. Please run setup.sh first."
    exit 1
fi

source venv/bin/activate
echo "[INFO] Starting VoiceDesignCloner..."
if [ "${VDC_INBROWSER:-1}" = "1" ]; then
    echo "[INFO] Browser will open automatically. If not, go to http://${VDC_SERVER_NAME:-127.0.0.1}:${VDC_SERVER_PORT:-7860}"
else
    echo "[INFO] Open http://${VDC_SERVER_NAME:-127.0.0.1}:${VDC_SERVER_PORT:-7860} manually."
fi
python app.py
