#!/bin/bash
# Downloads the wedding nasheed as nasheed.mp3 into this project folder.
# Requires yt-dlp: brew install yt-dlp
# Run once: bash download-nasheed.sh

set -e

URL="https://www.youtube.com/watch?v=OoP_GZIAajM"
OUT="nasheed"

if ! command -v yt-dlp &>/dev/null; then
  echo "yt-dlp not found. Installing via Homebrew..."
  brew install yt-dlp
fi

echo "Downloading nasheed..."
yt-dlp \
  --extract-audio \
  --audio-format mp3 \
  --audio-quality 0 \
  --output "${OUT}.%(ext)s" \
  "$URL"

echo "Done — nasheed.mp3 is ready."
