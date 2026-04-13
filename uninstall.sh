#!/bin/bash
#
# Liftnote Email Tool — Uninstaller
# Removes the /emails slash command from Claude Code
#

echo ""
echo "============================================"
echo "  Liftnote Email Tool — Uninstaller"
echo "============================================"
echo ""

INSTALL_DIR="$HOME/.claude/commands"

if [ -f "$INSTALL_DIR/emails.md" ]; then
    rm "$INSTALL_DIR/emails.md"
    echo "Removed: $INSTALL_DIR/emails.md"
else
    echo "Skill file not found at $INSTALL_DIR/emails.md — nothing to remove."
fi

if [ -d "$HOME/.claude/.liftnote-email-tool" ]; then
    rm -rf "$HOME/.claude/.liftnote-email-tool"
    echo "Removed version tracking data."
fi

echo ""
echo "Uninstall complete. The /emails command has been removed."
echo ""
