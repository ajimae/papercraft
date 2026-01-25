#!/bin/bash

echo "🚀 Setting up Papercraft..."

# Check if pnpm is installed
if ! command -v pnpm &> /dev/null; then
    echo "📦 Installing pnpm..."
    npm install -g pnpm
fi

# Install dependencies
echo "📦 Installing dependencies..."
pnpm install

# Install Playwright browsers
echo "🌐 Installing Playwright browsers..."
pnpm exec playwright install chromium

# Build
echo "🔨 Building..."
pnpm run build

# Run basic example
# echo "🧪 Testing with basic example..."
# pnpm run example:basic

echo "✅ Setup complete! Try 'make help' to see available commands."
