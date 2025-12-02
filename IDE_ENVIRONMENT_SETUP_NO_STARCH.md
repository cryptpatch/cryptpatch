# IDE Configuration Repository

Synchronized IDE settings for PyCharm, IntelliJ IDEA, and VS Code. Optimized for productivity, code quality, and consistent development workflow across machines.

## What's Included

- **PyCharm 2025.2** - Python development environment
- **IntelliJ IDEA 2025.2.5** - Java/Kotlin IDE configuration  
- **VS Code** - Lightweight editor with extensions

All configurations include code style rules, keybindings, inspections, and productivity plugins.

## Repository Structure

```
IDE_Environment_Setup/
├── pycharm-settings/
│   ├── code-style/      # PEP8 formatting rules
│   ├── colors-fonts/    # Theme and typography
│   ├── editor/          # Editor behavior
│   └── keymaps/         # Keyboard shortcuts
├── intellij-settings/
│   ├── code-style/      # Java/Kotlin formatting
│   ├── inspections/     # Code analysis rules
│   └── editor/          # Editor preferences
└── vscode-settings/
    ├── settings.json    # Core configuration
    ├── keybindings.json # Custom shortcuts
    └── extensions.json  # Required extensions
```

## Installation

### PyCharm

**Automatic (Recommended):**
```powershell
# Enable JetBrains Settings Sync
File → Settings → Settings Sync → Enable Settings Repository
```

**Manual:**
```powershell
# Close PyCharm
$configPath = "$env:APPDATA\JetBrains\PyCharm2025.2\options"
Copy-Item -Path "pycharm-settings\*" -Destination $configPath -Recurse -Force
# Restart PyCharm
```

### IntelliJ IDEA

**Automatic (Recommended):**
```powershell
File → Settings → Settings Sync → Enable Settings Repository
```

**Manual:**
```powershell
# Close IntelliJ
$configPath = "$env:APPDATA\JetBrains\IntelliJIdea2025.2\options"
Copy-Item -Path "intellij-settings\*" -Destination $configPath -Recurse -Force
# Restart IntelliJ
```

### VS Code

**Automatic (Recommended):**
```powershell
# Use built-in Settings Sync
Account Icon (bottom-left) → Turn On Settings Sync → Select items to sync
```

**Manual:**
```powershell
# Copy settings
Copy-Item "vscode-settings\settings.json" "$env:APPDATA\Code\User\settings.json" -Force
Copy-Item "vscode-settings\keybindings.json" "$env:APPDATA\Code\User\keybindings.json" -Force

# Install extensions
code --install-extensions-from-file vscode-settings\extensions.json
```

## Configuration Highlights

### PyCharm
- Auto-import on paste and completion
- PEP8 compliance with auto-formatting
- Type hints validation
- Integrated debugging with inline values
- Git hooks and pre-commit checks
- JetBrains Mono font (14pt, ligatures enabled)

### IntelliJ IDEA
- JavaDoc generation and validation
- Null safety analysis
- Resource leak detection
- Maven/Gradle auto-import
- JUnit 5 integration
- Advanced refactoring tools

### VS Code
- GitHub Copilot integration
- Format on save and paste
- Bracket pair colorization
- Auto-save after 1 second
- PowerShell 7 terminal
- Python, Java, Docker extensions

## System Requirements

- **OS:** Windows 10/11, macOS 10.15+, Linux
- **RAM:** 8GB minimum, 16GB recommended
- **Storage:** 5GB free space for IDEs
- **CPU:** Multi-core processor (4+ cores recommended)

## Maintenance

Export current settings:
```powershell
# PyCharm: File → Manage IDE Settings → Export Settings
# IntelliJ: File → Manage IDE Settings → Export Settings
# VS Code: Copy from $env:APPDATA\Code\User\

# Commit changes
git add .
git commit -m "Update: [IDE] - [description]"
git push
```

## Troubleshooting

**Settings not applying:**
1. Close IDE completely
2. Verify file paths are correct
3. Check file permissions
4. Clear IDE cache: `File → Invalidate Caches / Restart`

**Performance issues:**
1. Increase IDE memory: `Help → Change Memory Settings`
2. Exclude large directories from indexing
3. Disable unused plugins
4. Use SSD for IDE installation

**Keybinding conflicts:**
1. Check system-level shortcuts first
2. Resolve in `Settings → Keymap`
3. Search for conflicting keys
4. Reassign or remove duplicates

## Resources

- [PyCharm Documentation](https://www.jetbrains.com/pycharm/documentation/)
- [IntelliJ IDEA Guide](https://www.jetbrains.com/idea/documentation/)
- [VS Code Documentation](https://code.visualstudio.com/docs)

---

*Configured on Windows 10 with PowerShell 7.5.4*  
*Last updated: 2025-12-01*
