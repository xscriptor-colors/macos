<h1 align="center">MacOS</h1>

<p align="center">
  Lightweight macOS desktop environment: SketchyBar topbar and AeroSpace window manager, configured for productivity and visual clarity.
</p>

<p align="center">
  <img alt="macOS" src="https://img.shields.io/badge/macOS-000000?logo=apple&logoColor=white" />
  <img alt="SketchyBar" src="https://img.shields.io/badge/SketchyBar-5ad4e6" />
  <img alt="AeroSpace" src="https://img.shields.io/badge/AeroSpace-948ae3" />
  <img alt="MIT" src="https://img.shields.io/badge/License-MIT-yellow" />
  <img alt="Bash" src="https://img.shields.io/badge/Bash-4EAA25?logo=gnubash&logoColor=white" />
</p>

<hr />

<h2 align="center" id="preview">Preview</h2>

<p align="center">
  <img src="https://i.imgur.com/8vow4Jp.jpeg" width="900" alt="Preview" />
</p>

<hr />

<h2 align="center">Contents</h2>
<ul>
  <li><a href="#about">About</a></li>
  <li><a href="#colors">Colors</a></li>
  <li><a href="#preview">Preview</a></li>
  <li><a href="#structure">Structure</a></li>
  <li><a href="#quick-install">Quick Install</a></li>
  <li><a href="#remote-install">Remote Install</a></li>
  <li><a href="#manual-install">Manual Install</a></li>
  <li><a href="#uninstall">Uninstall</a></li>
  <li><a href="#usage">Usage</a></li>
  <li><a href="#keybindings">Keybindings</a></li>
  <li><a href="#customization">Customization</a></li>
  <li><a href="#contributing">Contributing</a></li>
  <li><a href="#license">License</a></li>
  <li><a href="#related-repos">Related repos</a></li>
  <li><a href="#x">X</a></li>
</ul>

<h2 align="center" id="about">About</h2>

<p>
  Two tools, one setup:
</p>
<ul>
  <li><strong>SketchyBar</strong> — A customizable macOS topbar with workspace indicators, system stats, clock, volume, battery, and app launcher icons.</li>
  <li><strong>AeroSpace</strong> — A tiling window manager with virtual desktops (workspaces), keyboard-driven navigation, and automatic window placement rules.</li>
</ul>


<h2 align="center" id="colors">Colors</h2>


<div align="center">
  <a href="https://raw.githubusercontent.com/xscriptor-colors/assets/main/media/palettes/palette_x.svg"><img src="https://raw.githubusercontent.com/xscriptor-colors/assets/main/media/palettes/palette_x.svg" height="100" alt="X"/></a>
  <a href="https://raw.githubusercontent.com/xscriptor-colors/assets/main/media/palettes/palette_madrid.svg"><img src="https://raw.githubusercontent.com/xscriptor-colors/assets/main/media/palettes/palette_madrid.svg" height="100" alt="Madrid"/></a>
  <a href="https://raw.githubusercontent.com/xscriptor-colors/assets/main/media/palettes/palette_lahabana.svg"><img src="https://raw.githubusercontent.com/xscriptor-colors/assets/main/media/palettes/palette_lahabana.svg" height="100" alt="Lahabana"/></a>
  <a href="https://raw.githubusercontent.com/xscriptor-colors/assets/main/media/palettes/palette_miami.svg"><img src="https://raw.githubusercontent.com/xscriptor-colors/assets/main/media/palettes/palette_miami.svg" height="100" alt="Miami"/></a>
  <a href="https://raw.githubusercontent.com/xscriptor-colors/assets/main/media/palettes/palette_paris.svg"><img src="https://raw.githubusercontent.com/xscriptor-colors/assets/main/media/palettes/palette_paris.svg" height="100" alt="Paris"/></a>
  <a href="https://raw.githubusercontent.com/xscriptor-colors/assets/main/media/palettes/palette_tokio.svg"><img src="https://raw.githubusercontent.com/xscriptor-colors/assets/main/media/palettes/palette_tokio.svg" height="100" alt="Tokio"/></a>
</div>
<div align="center">
  <a href="https://raw.githubusercontent.com/xscriptor-colors/assets/main/media/palettes/palette_oslo.svg"><img src="https://raw.githubusercontent.com/xscriptor-colors/assets/main/media/palettes/palette_oslo.svg" height="100" alt="Oslo"/></a>
  <a href="https://raw.githubusercontent.com/xscriptor-colors/assets/main/media/palettes/palette_helsinki.svg"><img src="https://raw.githubusercontent.com/xscriptor-colors/assets/main/media/palettes/palette_helsinki.svg" height="100" alt="Helsinki"/></a>
  <a href="https://raw.githubusercontent.com/xscriptor-colors/assets/main/media/palettes/palette_berlin.svg"><img src="https://raw.githubusercontent.com/xscriptor-colors/assets/main/media/palettes/palette_berlin.svg" height="100" alt="Berlin"/></a>
  <a href="https://raw.githubusercontent.com/xscriptor-colors/assets/main/media/palettes/palette_london.svg"><img src="https://raw.githubusercontent.com/xscriptor-colors/assets/main/media/palettes/palette_london.svg" height="100" alt="London"/></a>
  <a href="https://raw.githubusercontent.com/xscriptor-colors/assets/main/media/palettes/palette_praha.svg"><img src="https://raw.githubusercontent.com/xscriptor-colors/assets/main/media/palettes/palette_praha.svg" height="100" alt="Praha"/></a>
  <a href="https://raw.githubusercontent.com/xscriptor-colors/assets/main/media/palettes/palette_bogota.svg"><img src="https://raw.githubusercontent.com/xscriptor-colors/assets/main/media/palettes/palette_bogota.svg" height="100" alt="Bogota"/></a>
</div>



<h2 align="center" id="structure">Structure</h2>
<ul>
  <li><code>sketchybar/</code> — SketchyBar config: bar styles, items, plugins, colors, icons, and themes.</li>
  <li><code>aerospace/</code> — AeroSpace config: workspace bindings, gaps, window rules, and keybindings.</li>
  <li><code>install.sh</code> — Automated install script for dependencies and dotfiles.</li>
  <li><code>uninstall.sh</code> — Removes configs, services, and packages.</li>
</ul>

<h2 align="center" id="quick-install">Quick Install</h2>

<pre>
git clone https://github.com/xscriptor-colors/macos.git ~/macosx-dotfiles
cd ~/macosx-dotfiles
chmod +x install.sh
./install.sh
</pre>

<h2 align="center" id="remote-install">Remote Install</h2>

<p>Run directly from the repo without cloning:</p>

<pre>
# Install
curl -fsSL https://raw.githubusercontent.com/xscriptor-colors/macos/main/install.sh | bash

# Or with wget
wget -qO- https://raw.githubusercontent.com/xscriptor-colors/macos/main/install.sh | bash
</pre>

<pre>
# Uninstall
curl -fsSL https://raw.githubusercontent.com/xscriptor-colors/macos/main/uninstall.sh | bash
</pre>

<h2 align="center" id="manual-install">Manual Install</h2>

<ol>
  <li>Install <a href="https://brew.sh">Homebrew</a> if not already installed.</li>
  <li>Run <code>brew install sketchybar aerospace</code>.</li>
  <li>Install Hack Nerd Font: <code>brew install --cask font-hack-nerd-font</code>.</li>
  <li>Copy <code>sketchybar/</code> to <code>~/.config/sketchybar/</code>.</li>
  <li>Copy <code>aerospace/aerospace.toml</code> to <code>~/.config/aerospace/aerospace.toml</code>.</li>
  <li>Start services: <code>brew services start sketchybar</code>.</li>
  <li>Reload AeroSpace: <code>aerospace reload-config</code>.</li>
</ol>

<h2 align="center" id="uninstall">Uninstall</h2>

<pre>
git clone https://github.com/xscriptor-colors/macos.git ~/macosx-dotfiles
cd ~/macosx-dotfiles
chmod +x uninstall.sh
./uninstall.sh
</pre>

<p>Or run remotely:</p>

<pre>
curl -fsSL https://raw.githubusercontent.com/xscriptor-colors/macos/main/uninstall.sh | bash
</pre>

<h2 align="center" id="usage">Usage</h2>

<ul>
  <li><strong>Switch workspace:</strong> <code>Ctrl + number</code> (1-9).</li>
  <li><strong>Move window to workspace:</strong> <code>Ctrl + Shift + number</code>.</li>
  <li><strong>Focus window:</strong> <code>Ctrl + h/j/k/l</code> (left/down/up/right).</li>
  <li><strong>Move window:</strong> <code>Ctrl + Shift + h/j/k/l</code>.</li>
  <li><strong>Resize:</strong> <code>Ctrl + -</code> / <code>Ctrl + =</code>.</li>
  <li><strong>Fullscreen:</strong> <code>Ctrl + f</code>.</li>
  <li><strong>Close window:</strong> <code>Ctrl + w</code>.</li>
  <li><strong>Toggle floating:</strong> <code>Ctrl + t</code>.</li>
  <li><strong>Open apps:</strong> <code>Ctrl + Enter</code> (Kitty), <code>Ctrl + v</code> (VS Code), <code>Ctrl + b</code> (Brave).</li>
  <li><strong>Reload AeroSpace:</strong> <code>Ctrl + Shift + r</code>.</li>
  <li><strong>Click workspace number</strong> on the topbar to switch.</li>
</ul>

<h2 align="center" id="keybindings">Keybindings</h2>

<p>
  All bindings use <strong>Ctrl</strong> as the primary modifier to avoid conflicts with macOS Option-key characters (useful for Spanish and other non-US keyboard layouts).
</p>

<h2 align="center" id="customization">Customization</h2>

<h3 align="center">Themes</h3>

<p>
  SketchyBar supports multiple color palettes. Themes live in <code>sketchybar/themes/</code> and
  are defined with the same palette names as the VS Code Xscriptor Themes
  (<a href="https://github.com/xscriptor-colors/vscode/blob/main/themes/xscriptor-themes/colors.md">colors.md</a>):
  X, Madrid, Lahabana, Miami, Paris, Tokio, Oslo, Helsinki, Berlin, London, Praha, and Bogota.
</p>

<pre>
# List the current theme and available palettes
./sketchybar/theme.sh

# Switch to a palette and reload the bar
./sketchybar/theme.sh miami
</pre>

<p>
  You can also cycle themes directly from the topbar: click the palette item
  (<code>󰑩</code> + current theme name) to switch to the next palette.
</p>

<p>
  The active theme is persisted in <code>~/.config/sketchybar/theme</code> (default: <code>x</code>).
</p>

<ul>
  <li><strong>Colors:</strong> Edit <code>sketchybar/themes/&lt;theme&gt;.sh</code> to change accent colors for a palette, or add a new file to define a custom theme.</li>
  <li><strong>Icons:</strong> Edit <code>sketchybar/icons.sh</code> to change icon glyphs (Nerd Font required).</li>
  <li><strong>Window rules:</strong> Edit <code>aerospace/aerospace.toml</code> under <code>on-window-detected</code> to add new app-to-workspace bindings.</li>
  <li><strong>Keybindings:</strong> Edit <code>[mode.main.binding]</code> in <code>aerospace/aerospace.toml</code>.</li>
</ul>

<h2 align="center" id="contributing">Contributing</h2>

<p>
  Contributions are welcome. Fork the repo, make your changes, and open a pull request.
</p>

<h2 align="center" id="license">License</h2>

<p>
  MIT License. See <a href="./LICENSE">LICENSE</a> for details.
</p>

<h2 align="center" id="related-repos">Related Repos</h2>
<ul>
  <li><a href="https://github.com/xscriptor-colors/terminal">Terminal</a></li>
  <li><a href="https://github.com/xscriptor-colors/nvim">Nvim</a></li>
  <li><a href="https://github.com/xscriptor-colors/vscode">VSCode</a></li>
  <li><a href="https://github.com/xscriptor-colors/jetbrains">Jetbrains</a></li>
  <li><a href="https://github.com/xscriptor-colors/obsidian">Obsidian</a></li>
  <li><a href="https://github.com/xscriptor-colors/xcode">Xcode</a></li>
</ul>

<div id="x" align="center">
<h2>X</h2>

<a href="https://xscriptor.io">Dev</a>
 & 
<a href="https://github.com/xscriptor">github</a>
 & 
<a href="https://www.xscriptor.com">X</a>

</div>
