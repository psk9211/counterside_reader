#!/bin/bash

cd "$(dirname "$0")"

PORT=8080

echo "---------------------------------------"
echo "Starting Counterside Story Reader..."
echo "---------------------------------------"

# 1. Detect OS and Architecture
OS="$(uname -s)"
ARCH="$(uname -m)"
BINARY=""

if [ "$OS" = "Linux" ]; then
    if [ "$ARCH" = "x86_64" ]; then
        BINARY="linux-amd64"
    elif [[ "$ARCH" == arm* ]] || [ "$ARCH" = "aarch64" ]; then
        BINARY="linux-arm64"
    fi
elif [ "$OS" = "Darwin" ]; then
    if [ "$ARCH" = "x86_64" ]; then
        BINARY="mac-amd64"
    elif [ "$ARCH" = "arm64" ]; then
        BINARY="mac-arm64"
    fi
fi

# 2. Check if a binary was assigned
if [ -z "$BINARY" ]; then
    echo "Error: Unsupported OS or Architecture ($OS $ARCH)."
    read -p "Press enter to exit..."
    exit 1
fi

BIN_PATH="./bin/$BINARY"

# 3. Ensure the binary exists and is executable
if [ ! -f "$BIN_PATH" ]; then
    echo "Error: Server binary not found at $BIN_PATH"
    read -p "Press enter to exit..."
    exit 1
fi

chmod +x "$BIN_PATH"

# 4. Open the browser
# 'open' is native to macOS, 'xdg-open' is native to Linux
if command -v open >/dev/null 2>&1; then
    (sleep 2 && open "http://localhost:$PORT") &
elif command -v xdg-open >/dev/null 2>&1; then
    (sleep 2 && xdg-open "http://localhost:$PORT") &
fi

# 5. Launch miniserve
# --spa handles routing, --index defines the entry point
"$BIN_PATH" -p $PORT --spa --index index.html dist