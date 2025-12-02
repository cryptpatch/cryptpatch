# 🎨 IDE Environment Setup

<div align="center">

![IDE](https://img.shields.io/badge/IDE-Configuration-blue?style=for-the-badge)
![PyCharm](https://img.shields.io/badge/PyCharm-2025.2-green?style=for-the-badge&logo=pycharm)
![IntelliJ](https://img.shields.io/badge/IntelliJ-2025.2.5-orange?style=for-the-badge&logo=intellij-idea)
![VSCode](https://img.shields.io/badge/VS%20Code-Latest-007ACC?style=for-the-badge&logo=visual-studio-code)

</div>

---

## 📖 Overview

Personal IDE configurations for **PyCharm**, **IntelliJ IDEA**, and **VS Code**, meticulously crafted for optimal productivity, clean code practices, and an enhanced development experience.

**Last Updated:** December 1, 2025

---

## 📁 Repository Structure

```
IDE_Environment_Setup/
├── pycharm-settings/        # PyCharm 2025.2 configurations
│   ├── code-style/          # Code formatting rules
│   ├── colors-fonts/        # Theme and font settings
│   ├── editor/              # Editor behavior
│   └── keymaps/             # Custom shortcuts
├── intellij-settings/       # IntelliJ IDEA Community 2025.2.5
│   ├── code-style/          # Java/Kotlin formatting
│   ├── inspections/         # Code quality checks
│   ├── editor/              # Editor preferences
│   └── keymaps/             # Keyboard shortcuts
├── vscode-settings/         # Visual Studio Code
│   ├── settings.json        # Global settings
│   ├── keybindings.json     # Custom keybindings
│   └── extensions.json      # Recommended extensions
└── README.md
```

---

## 🚀 Quick Restore Guide

### PyCharm Configuration

#### Method 1: Automatic (Recommended)
```powershell
# Using JetBrains Settings Sync (Built-in)
1. Open PyCharm → File → Settings → Settings Sync
2. Sign in with JetBrains Account
3. Enable "Settings Repository"
4. Sync settings automatically
```

#### Method 2: Manual
```powershell
# Close PyCharm first
$configPath = "$env:APPDATA\JetBrains\PyCharm2025.2\options"
Copy-Item -Path ".\pycharm-settings\*" -Destination $configPath -Recurse -Force

# Restart PyCharm
```

---

### IntelliJ IDEA Configuration

#### Method 1: Automatic (Recommended)
```powershell
# Using JetBrains Settings Sync
1. File → Settings → Settings Sync
2. Sign in and enable sync
3. All settings synchronized across devices
```

#### Method 2: Manual
```powershell
# Close IntelliJ IDEA first
$configPath = "$env:APPDATA\JetBrains\IntelliJIdea2025.2\options"
Copy-Item -Path ".\intellij-settings\*" -Destination $configPath -Recurse -Force

# Restart IntelliJ IDEA
```

---

### VS Code Configuration

#### Method 1: Settings Sync (Recommended)
```powershell
# Built-in VS Code Settings Sync
1. Click Account icon (bottom-left)
2. Turn On Settings Sync
3. Select what to sync (Settings, Keybindings, Extensions, etc.)
4. Sign in with GitHub/Microsoft
```

#### Method 2: Manual
```powershell
# Copy settings
Copy-Item -Path ".\vscode-settings\settings.json" -Destination "$env:APPDATA\Code\User\settings.json" -Force

# Copy keybindings
Copy-Item -Path ".\vscode-settings\keybindings.json" -Destination "$env:APPDATA\Code\User\keybindings.json" -Force

# Install extensions (run in VS Code terminal)
code --install-extensions-from-file vscode-settings/extensions.json
```

---

## ⚙️ Key Features & Optimizations

### 🐍 PyCharm Features

<details>
<summary><b>Click to expand</b></summary>

#### Code Quality
- ✅ **Auto-import** on paste and completion
- ✅ **PEP8 compliance** checking
- ✅ **Type hints** validation
- ✅ **Docstring** generation
- ✅ **Unused imports** highlighting

#### Editor Enhancements
- 🎨 **JetBrains Mono** font (14pt, ligatures enabled)
- 🔍 **Parameter hints** for better readability
- 🧩 **Smart code completion** with ML suggestions
- 🐛 **Enhanced debugging** with inline values
- 📝 **Spell checking** for comments and strings

#### Productivity Boosters
- ⚡ **Live templates** for common patterns
- 🔄 **Git integration** with pre-commit checks
- 📊 **Code coverage** integration
- 🧪 **Test runner** optimizations
- 🚀 **Run configurations** saved and shared

#### Custom Keybindings
- `Ctrl+Shift+A` - Find Action
- `Ctrl+Alt+L` - Reformat Code
- `Shift+Shift` - Search Everywhere
- `Alt+Enter` - Show Intention Actions

</details>

---

### ☕ IntelliJ IDEA Features

<details>
<summary><b>Click to expand</b></summary>

#### Code Quality
- ✅ **JavaDoc warnings** and generation
- ✅ **Null safety** analysis
- ✅ **Resource leak** detection
- ✅ **Exception handling** suggestions
- ✅ **Code smell** detection

#### Build Tools Integration
- 🛠️ **Maven auto-import** enabled
- 🎯 **Gradle optimization** configured
- 📦 **Dependency analysis** active
- 🔧 **Build-on-save** for quick feedback

#### Advanced Features
- 🎨 **Experimental UI** enabled
- 💻 **PowerShell terminal** integration
- 🔍 **Advanced debugging** with evaluators
- 📝 **Smart auto-import** for Java/Kotlin
- 🧪 **JUnit 5** support optimized

#### Themes & UI
- 🌙 Dark theme with high contrast
- 🎨 Semantic highlighting enabled
- 📊 Code lens for references
- 🔤 Font ligatures active

</details>

---

### 💻 VS Code Features

<details>
<summary><b>Click to expand</b></summary>

#### Editor Configuration
- ✅ **Sticky scroll** for context awareness
- ✅ **Enhanced error display** with suggestions
- ✅ **Auto-save** after delay (1 second)
- ✅ **Format on save/paste** enabled
- ✅ **Bracket pair colorization** active

#### Extensions Installed
- 🤖 **GitHub Copilot** - AI pair programming
- 🐍 **Python** - Full Python support
- ☕ **Java Extension Pack** - Complete Java development
- 🎨 **Prettier** - Code formatting
- 🔍 **ESLint** - JavaScript linting
- 🐋 **Docker** - Container management
- 📝 **Markdown All in One** - Enhanced Markdown
- 🌈 **Bracket Pair Colorizer** - Visual brackets
- 🎯 **Path Intellisense** - File path autocomplete

#### Productivity Features
- ⚡ **Emmet expansion** enabled
- 🖱️ **Multi-cursor** support optimized
- 📂 **File explorer** enhancements
- 🔎 **Advanced search** with regex
- 🧩 **IntelliSense** tuned for speed

#### Terminal Integration
- 💻 PowerShell 7 as default
- 🎨 Custom prompt with Oh My Posh
- 🔤 CascadiaCode Nerd Font
- 🌈 Syntax highlighting active

</details>

---

## 🎯 Settings Philosophy

### Design Principles
1. **⚡ Performance First** - Fast indexing, minimal lag
2. **🧹 Clean Code** - Enforce best practices automatically
3. **🎨 Visual Clarity** - Readable fonts, clear highlighting
4. **🔄 Consistency** - Same shortcuts across IDEs where possible
5. **🚀 Productivity** - Reduce repetitive tasks

### Optimization Targets
- **Code Quality**: Automated checks and suggestions
- **Speed**: Fast navigation and search
- **Ergonomics**: Comfortable for long coding sessions
- **Learning**: Helpful hints without being intrusive

---

## 🔄 Syncing Strategies

### Recommended: Official IDE Sync
| IDE | Method | Benefits |
|-----|--------|----------|
| PyCharm | JetBrains Settings Sync | Real-time, cross-device, automatic |
| IntelliJ | JetBrains Settings Sync | Same as PyCharm, shared account |
| VS Code | Built-in Settings Sync | GitHub integration, instant sync |

### Alternative: This Repository
- ✅ Version control for settings
- ✅ Custom backup solution
- ✅ Share with other devices manually
- ✅ Keep historical changes

---

## 📝 Maintenance & Updates

### Regular Tasks
```bash
# Export current settings (manual backup)
# PyCharm: File → Manage IDE Settings → Export Settings
# IntelliJ: File → Manage IDE Settings → Export Settings
# VS Code: Copy from $env:APPDATA\Code\User\

# Commit changes
git add .
git commit -m "Update: [IDE name] - [what changed]"
git push
```

### Update Schedule
- 🔄 **Weekly**: Check for IDE updates
- 📦 **Monthly**: Review and update extensions
- 🧹 **Quarterly**: Clean up unused settings
- 📚 **Annually**: Major configuration overhaul

---

## 🛠️ Customization Tips

### For PyCharm/IntelliJ
```python
# Add custom live templates
# Settings → Editor → Live Templates → Python (PyCharm) / Java (IntelliJ)
# Example: Type 'main' + Tab for main function template
```

### For VS Code
```json
// Add custom snippets
// File → Preferences → User Snippets
{
  "Print Statement": {
    "prefix": "pr",
    "body": ["print($1)"],
    "description": "Quick print"
  }
}
```

---

## 📊 System Requirements

### Minimum Specifications
- **OS**: Windows 10/11, macOS 10.15+, Linux
- **RAM**: 8GB (16GB recommended)
- **Storage**: 5GB free space
- **CPU**: Multi-core processor (4+ cores recommended)

### Optimal Performance
- 💾 **SSD** for IDE installation
- 🚀 **16GB+ RAM** for large projects
- 🖥️ **Dedicated GPU** for UI smoothness (optional)

---

## 🐛 Troubleshooting

<details>
<summary><b>Settings not applying?</b></summary>

1. Ensure IDE is fully closed before copying
2. Check file permissions
3. Restart IDE after copying
4. Clear cache: `File → Invalidate Caches / Restart`

</details>

<details>
<summary><b>Performance issues?</b></summary>

1. Increase IDE memory: `Help → Change Memory Settings`
2. Exclude large directories from indexing
3. Disable unused plugins
4. Clear system cache and temp files

</details>

<details>
<summary><b>Keybindings conflict?</b></summary>

1. Check system-level shortcuts first
2. Resolve in: `Settings → Keymap`
3. Search for conflicting keys
4. Reassign or remove conflicts

</details>

---

## 📚 Additional Resources

### JetBrains Resources
- 📘 [PyCharm Documentation](https://www.jetbrains.com/pycharm/documentation/)
- 📙 [IntelliJ IDEA Guide](https://www.jetbrains.com/idea/documentation/)
- 🎓 [JetBrains Academy](https://www.jetbrains.com/academy/)

### VS Code Resources
- 📗 [VS Code Docs](https://code.visualstudio.com/docs)
- 🎥 [VS Code Tips & Tricks](https://code.visualstudio.com/docs/getstarted/tips-and-tricks)
- 🛠️ [Extension Marketplace](https://marketplace.visualstudio.com/)

---

## 🤝 Contributing

This is a personal configuration repository, but suggestions welcome!

- 💡 **Share** your favorite settings
- 🐛 **Report** issues with configurations
- 🌟 **Suggest** new optimizations

---

## 📄 License

MIT License - Use these configurations freely for your own setup!

---

<div align="center">

### ⚡ "Great tools empower great developers."

**Configured by**: [@cryptpatch](https://github.com/cryptpatch)  
**Platform**: Windows 10 with PowerShell 7.5.4  
**Last Updated**: December 1, 2025

![Built with](https://img.shields.io/badge/Built%20with-⌨️%20%26%20☕-blue?style=for-the-badge)

</div>
