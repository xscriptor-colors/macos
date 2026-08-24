#!/bin/bash

set -e

CONFIG_DIR="$HOME/.config"
DOTFILES_DIR="$HOME/.macosx"

echo "==> Uninstalling Xscriptor macOS dotfiles ..."

echo "  -> Stopping SketchyBar ..."
brew services stop sketchybar 2>/dev/null || true

echo "  -> Removing configs ..."
rm -rf "$CONFIG_DIR/sketchybar"
rm -f "$CONFIG_DIR/aerospace/aerospace.toml"

echo "  -> Removing dotfiles repo ..."
rm -rf "$DOTFILES_DIR"

echo "  -> Uninstalling packages ..."
brew uninstall sketchybar 2>/dev/null || true
brew uninstall --cask nikitabobko/tap/aerospace 2>/dev/null || true
brew untap FelixKratz/formulae 2>/dev/null || true
brew untap nikitabobko/tap 2>/dev/null || true

echo ""
echo "==> Done."
