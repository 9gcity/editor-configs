# Editor Configurations

A collection of configuration files for various editors and tools, including Neovim, i3 window manager, Alacritty terminal, Zsh shell, and more.

## 📁 What's Included

- **Neovim**: Complete configuration with plugins, LSP support, and themes
- **i3 Window Manager**: Full desktop environment configuration with rofi, picom, and status bar
- **Alacritty**: Terminal emulator configuration with multiple color schemes
- **Zsh**: Shell configuration with oh-my-zsh, themes, and plugins
- **Rofi**: Application launcher themes and configurations

## 🚀 Quick Setup

### Prerequisites

Before using these configurations, ensure you have the following installed:

- **Neovim** (>= 0.8)
- **i3 window manager**
- **Alacritty terminal**
- **Zsh shell**
- **Git**
- **Rofi** (for i3 launcher)
- **Feh** (for wallpaper setting)
- **Picom** (for window transparency)

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/editor-configs.git
   cd editor-configs
   ```

2. **Backup your existing configurations:**
   ```bash
   # Backup existing configs
   mv ~/.config/nvim ~/.config/nvim.backup 2>/dev/null || true
   mv ~/.config/i3 ~/.config/i3.backup 2>/dev/null || true
   mv ~/.config/alacritty ~/.config/alacritty.backup 2>/dev/null || true
   mv ~/.zshrc ~/.zshrc.backup 2>/dev/null || true
   ```

3. **Create symbolic links:**
   ```bash
   # Neovim
   ln -sf $(pwd)/nvim/nvim ~/.config/nvim
   
   # i3 Window Manager
   ln -sf $(pwd)/i3/i3 ~/.config/i3
   
   # Alacritty
   ln -sf $(pwd)/alacritty ~/.config/alacritty
   
   # Zsh (choose one of the following)
   ln -sf $(pwd)/zsh/.zshrc ~/.zshrc
   # OR if you prefer the .zsh version:
   # ln -sf $(pwd)/zsh/.zsh/.zshrc ~/.zshrc
   ```

## ⚙️ Required Customizations

After installation, you **must** customize these paths to match your system:

### 1. Wallpaper Path (i3 config)
**File:** `i3/i3/config` (line ~200)
```bash
# Change this line to point to your actual wallpaper:
exec_always feh --bg-fill ~/Pictures/Wallpapers/your-wallpaper.jpg
```

**To customize:**
- Replace `your-wallpaper.jpg` with your actual wallpaper filename
- Ensure the wallpaper exists in `~/Pictures/Wallpapers/` or update the full path

### 2. Display Configuration (i3 config)
**File:** `i3/i3/config` (line ~196)
```bash
# Update this to match your display setup:
exec --no-startup-id xrandr --output DP-2-2 --rotate left
```

**To customize:**
- Run `xrandr` to see your available displays
- Replace `DP-2-2` with your display name
- Adjust or remove the `--rotate left` option as needed

### 3. Autojump Setup (Zsh configs)
**Files:** `zsh/.zshrc` and `zsh/.zsh/.zshrc`

The autojump paths use `$HOME` variables, but you need to install autojump:
```bash
# Install autojump (Ubuntu/Debian)
sudo apt install autojump

# Or install via git (if not available in package manager)
git clone https://github.com/wting/autojump.git
cd autojump
./install.py
```

## 🎨 Optional Customizations

### Neovim Plugins
On first launch, Neovim will automatically install plugins via Packer. If you encounter issues:
```bash
# Open Neovim and run:
:PackerSync
:PackerInstall
```

### Alacritty Themes
Switch between light and dark themes by commenting/uncommenting sections in:
- `alacritty/alacritty.toml` (TOML format)
- `alacritty/alacritty.yml` (YAML format)

### Rofi Themes
The i3 config uses `type-3/style-10` rofi theme. To change:
**File:** `i3/i3/rofi_themes/rofi/files/launchers/type-3/launcher.sh`
```bash
# Change the theme variable:
theme='style-1'  # or any other available style
```

## 🔧 Troubleshooting

### Neovim Issues
- **Packer not found**: The configuration will auto-install Packer on first run
- **LSP errors**: Install language servers for your preferred languages
- **Plugin errors**: Run `:PackerSync` and restart Neovim

### i3 Issues
- **Rofi not working**: Ensure rofi is installed and the theme files exist
- **Wallpaper not loading**: Check that feh is installed and wallpaper path is correct
- **Transparency not working**: Install picom compositor

### Font Issues
- Install required fonts for proper display:
  ```bash
  # Install JetBrains Mono Nerd Font
  sudo apt install fonts-firacode fonts-powerline
  # Or download from: https://www.nerdfonts.com/font-downloads
  ```

## 📝 File Structure

```
editor-configs/
├── alacritty/          # Terminal emulator configs
├── i3/                 # Window manager and desktop environment
├── nvim/               # Neovim configuration and plugins
├── zsh/                # Shell configuration files
├── .gitignore          # Ignored files (auto-generated content)
└── README.md           # This file
```

## 🤝 Contributing

Feel free to:
- Report issues
- Suggest improvements
- Submit pull requests
- Share your customizations

## 📄 License

This configuration collection is provided as-is. Feel free to use, modify, and distribute as needed.
