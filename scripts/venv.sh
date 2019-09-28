cd "$(dirname "$0")/.."
python -m venv python3 && . python3/bin/activate && pip3 install -r requirements.txt && pip3 install --upgrade numpy >/dev/stdout
