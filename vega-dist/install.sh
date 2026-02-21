#!/bin/bash

echo "========================================"
echo "  Vega-Sonic Command Center Setup"
echo "========================================"
echo ""

# Check Node.js
if ! command -v node &> /dev/null; then
    echo "[ERROR] Node.js is not installed"
    echo "Please install Node.js from https://nodejs.org/"
    exit 1
fi

echo "[OK] Node.js found:"
node --version
echo ""

# Install dependencies
echo "[INFO] Installing dependencies..."
npm install

if [ $? -ne 0 ]; then
    echo "[ERROR] Failed to install dependencies"
    exit 1
fi

echo ""
echo "========================================"
echo "  Installation Complete!"
echo "========================================"
echo ""
echo "To start the server:"
echo "  npm start"
echo ""
echo "Then open your browser:"
echo "  http://localhost:3000"
echo ""
