# Development Environment Handbook

Complete documentation for configuring a Windows 10 development environment with PowerShell, WSL2, and security tools. Covers terminal setup, IDE configuration, and Linux integration for both development and penetration testing.

## Contents

### I. Windows System Configuration
1. **Windows Terminal** - Modern terminal with custom themes and fonts
2. **PowerShell 7** - Shell configuration with Oh My Posh theming
3. **Git & GitHub** - Version control setup and authentication

### II. Development Tools  
4. **Visual Studio Code** - Editor setup with extensions
5. **JetBrains IDEs** - PyCharm and IntelliJ IDEA configuration
6. **Fonts** - Nerd Font installation for enhanced terminal display

### III. Linux/WSL Environment
7. **WSL2 Setup** - Windows Subsystem for Linux installation
8. **Kali Linux** - Penetration testing distribution via WSL2
9. **Arch Linux** - Lightweight development environment
10. **WSL2 Networking** - Network configuration and packet capture

### IV. Reference
11. **Command Cheat Sheet** - Quick reference for common operations
12. **Troubleshooting** - Solutions to common problems
13. **Backup & Restore** - Configuration backup procedures

## System Configuration

**Host System:**
- OS: Windows 10 Build 19045
- Terminal: Windows Terminal (latest)
- Shell: PowerShell 7.5.4
- Prompt: Oh My Posh with custom theme
- Fonts: CascadiaCode Nerd Font, BigBlueTerminal

**WSL2 Environment:**
- WSL Version: 2
- Distributions: Kali Linux 2025.3, Arch Linux
- Network Mode: NAT with IP forwarding
- Resources: 3GB RAM, 2 CPUs

**Development Tools:**
- IDEs: PyCharm 2025.2, IntelliJ IDEA Community 2025.2.5
- Editor: Visual Studio Code
- Version Control: Git with GitHub CLI
- Authentication: SSH keys and personal access tokens

## Quick Start

### Fresh System Setup

Follow chapters sequentially:

```powershell
# Clone handbook
git clone https://github.com/cryptpatch/Personal_Workflow_Settings.git
cd Personal_Workflow_Settings

# Start with Chapter 1
cd 01-windows-terminal
# Follow README.md instructions
```

### Specific Component Setup

Navigate to the relevant chapter directory and follow its README.

### Command Reference

For quick command lookup without reading full chapters:

```powershell
cd 11-cheat-sheet
cat README.md
```

## Chapter Overview

### 1. Windows Terminal Setup
Install and configure Windows Terminal with:
- Custom color schemes
- Emoji support
- Nerd Font integration
- Profile configuration for PowerShell, CMD, WSL

### 2. PowerShell Configuration
Set up PowerShell 7 with:
- Oh My Posh prompt customization
- Module installation (PSReadLine, Terminal-Icons)
- Custom aliases and functions
- Profile script configuration

### 3. Git & GitHub Setup
Configure version control:
- Git installation and global config
- SSH key generation and GitHub authentication
- Personal access token setup
- GitHub CLI installation and login

### 4. Visual Studio Code
Editor configuration:
- Essential extensions (Python, Java, Docker, etc.)
- Settings and keybindings
- GitHub Copilot integration
- Terminal integration

### 5. JetBrains IDEs
PyCharm and IntelliJ setup:
- Code style and formatting rules
- Inspection profiles
- Plugin recommendations
- Productivity features

### 6. Font Installation
Nerd Fonts for enhanced terminal:
- Installation procedure
- Configuration in terminal and IDEs
- Glyph support verification

### 7. WSL2 Installation
Windows Subsystem for Linux:
- WSL2 feature enablement
- Resource allocation
- File system access
- Performance tuning

### 8. Kali Linux Configuration
Penetration testing environment:
- Kali installation via WSL2
- Tool updates and package management
- Custom configurations
- Integration with Windows tools

### 9. Arch Linux Configuration
Lightweight dev environment:
- Arch installation via WSL2
- Package manager setup
- Development environment configuration
- Custom shell setup

### 10. WSL2 Networking
Network configuration:
- Port forwarding from Windows to WSL
- Packet capture setup
- Wireshark integration
- Firewall configuration

### 11. Command Cheat Sheet
Quick reference for:
- PowerShell cmdlets
- Git operations
- WSL management commands
- Network diagnostics
- Penetration testing tools

### 12. Troubleshooting
Solutions for:
- Terminal rendering issues
- WSL2 startup failures
- Network connectivity problems
- IDE performance issues
- Git authentication errors

### 13. Backup & Restore
Procedures for:
- Exporting configurations
- Environment snapshot creation
- Restore on new machine
- Migration between systems

## Usage Guidelines

### First-Time Setup
1. Read chapters in order (01-13)
2. Don't skip prerequisites
3. Test each component before proceeding
4. Document any customizations

### As Reference
1. Use table of contents to locate information
2. Check cheat sheet for quick commands
3. Consult troubleshooting for issues
4. Search repository for specific topics

### Maintenance
```bash
# Keep handbook synchronized
cd Personal_Workflow_Settings
git pull origin master

# Update configurations
git add .
git commit -m "Update: [chapter] - [description]"
git push
```

## Prerequisites

### Before Starting
- Windows 10 version 2004+ (for WSL2)
- Administrator access
- Stable internet connection
- Basic command line knowledge
- GitHub account (for authentication)

### Recommended Skills
- Familiarity with Windows terminal
- Basic Git knowledge
- Text editor usage
- Command line navigation

## Troubleshooting Quick Reference

| Issue | Chapter | Solution |
|-------|---------|----------|
| Terminal not launching | 01 | Reinstall from Microsoft Store |
| PowerShell errors | 02 | Check execution policy |
| Git auth fails | 03 | Regenerate SSH keys or tokens |
| WSL2 won't start | 07 | Run `wsl --shutdown` and restart |
| Network issues | 10 | Reset network adapter |
| IDE slow | 05 | Increase memory allocation |

Full troubleshooting guide in Chapter 12.

## Contributing

This is a personal handbook, but feedback welcome:
- Report errors or outdated information
- Suggest improvements
- Share alternative approaches
- Document edge cases

## Maintenance Schedule

- **Weekly:** Check for software updates
- **Monthly:** Review configurations
- **Quarterly:** Test restore procedures
- **Annually:** Major documentation update

## Additional Resources

### Official Documentation
- [Windows Terminal Docs](https://docs.microsoft.com/en-us/windows/terminal/)
- [PowerShell Documentation](https://docs.microsoft.com/en-us/powershell/)
- [WSL2 Documentation](https://docs.microsoft.com/en-us/windows/wsl/)

### Community Resources
- r/PowerShell - PowerShell community
- r/WSL - Windows Subsystem for Linux
- Stack Overflow - Technical Q&A

---

*Author: [@cryptpatch](https://github.com/cryptpatch)*  
*Platform: Windows 10 + WSL2*  
*Last updated: 2025-12-01*
