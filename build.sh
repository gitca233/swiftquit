#!/bin/bash
# Build Swift Quit (1.5.1-fixed) in Release mode.
# Output: build/Build/Products/Release/Swift Quit.app
set -euo pipefail
cd "$(dirname "$0")"
xcodebuild -project "Swift Quit.xcodeproj" \
  -scheme "Swift Quit" \
  -configuration Release \
  -derivedDataPath build \
  build
echo "Done. App bundle: build/Build/Products/Release/Swift Quit.app"