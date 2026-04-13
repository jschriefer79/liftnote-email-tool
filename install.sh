#!/bin/bash
#
# Liftnote Email Tool — Installer
# Installs the /emails slash command for Claude Code
#

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
VERSION=$(cat "$SCRIPT_DIR/VERSION")

echo ""
echo "============================================"
echo "  Liftnote Email Tool — Installer v${VERSION}"
echo "============================================"
echo ""

# Determine install location
# Default: global (~/.claude/commands/) so it works in any project
INSTALL_DIR="$HOME/.claude/commands"

echo "This will install the /emails command for Claude Code."
echo ""
echo "Install location: $INSTALL_DIR"
echo ""

# Create directory if it doesn't exist
mkdir -p "$INSTALL_DIR"

# Copy the skill file
cp "$SCRIPT_DIR/emails.md" "$INSTALL_DIR/emails.md"

# Save version info for update checks
mkdir -p "$HOME/.claude/.liftnote-email-tool"
echo "$VERSION" > "$HOME/.claude/.liftnote-email-tool/installed-version"
echo "$SCRIPT_DIR" > "$HOME/.claude/.liftnote-email-tool/repo-path"

# Check for Dropbox examples
echo "Checking for training examples..."
DROPBOX_PATH="$HOME/Dropbox/AIVault/Liftnotes"
if [ -d "$DROPBOX_PATH" ]; then
    EXAMPLE_COUNT=$(ls "$DROPBOX_PATH"/Liftnote\ Example* "$DROPBOX_PATH"/liftnote\ example* 2>/dev/null | wc -l | tr -d ' ')
    echo "  Dropbox examples: found ($EXAMPLE_COUNT files in $DROPBOX_PATH)"
else
    echo "  WARNING: Dropbox examples not found at $DROPBOX_PATH"
    echo ""
    echo "  The /emails command reads real liftnote examples from:"
    echo "    ~/Dropbox/AIVault/Liftnotes/"
    echo ""
    echo "  Make sure this Dropbox folder is synced to your machine"
    echo "  for the best results. The tool will still work without"
    echo "  them, but output quality will be significantly better"
    echo "  with the training examples available."
fi

echo ""
echo "============================================"
echo "  Installation complete!"
echo "============================================"
echo ""
echo "To use it:"
echo "  1. Open Claude Code in any project"
echo "  2. Type: /emails"
echo "  3. Provide your promotion (Word doc, PDF, URL, or pasted text)"
echo "  4. Get a ready-to-send liftnote email"
echo ""
echo "To update later, run: ./update.sh"
echo ""
