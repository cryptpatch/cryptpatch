# 📚 Personal Development Workflow Handbook

<div align="center">

![Handbook](https://img.shields.io/badge/Type-Complete%20Handbook-success?style=for-the-badge)
![Platform](https://img.shields.io/badge/Platform-Windows%2010%20%2B%20WSL2-blue?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Actively%20Maintained-green?style=for-the-badge)

</div>

---

## 🎯 Overview

A **comprehensive, living documentation** of my complete development environment setup on Windows with WSL2. This handbook covers everything from terminal configuration to pentesting environments, serving as both a setup guide and personal reference.

**Author**: [@cryptpatch](https://github.com/cryptpatch) - Computer Science Student 🎓  
**Last Updated**: December 1, 2025  
**Platform**: Windows 10 Build 19045 with WSL2

---

## 📖 What This Handbook Contains

This isn't just a collection of configuration files—it's a **complete system documentation** that includes:

- 📝 **Step-by-step setup instructions** for every component
- ⚙️ **Configuration files** with detailed explanations
- 🔧 **Troubleshooting guides** for common issues
- 🎨 **Customization tips** to make it your own
- 🔄 **Backup & restore procedures** for easy migration
- 🐛 **Known issues** and their solutions
- 📚 **Command reference** and cheat sheets

---

## 🗂️ Handbook Structure

### 📋 Table of Contents

<table>
<tr>
<td width="50%">

#### **Part I: Windows System Configuration**

1. 🖥️ **[Windows Terminal Setup](./01-windows-terminal/)**
   - Installation and configuration
   - Emoji support and fonts
   - Custom color schemes
   - Profile management

2. 💻 **[PowerShell Configuration](./02-powershell/)**
   - PowerShell 7 installation
   - Oh My Posh theming
   - Custom prompt setup
   - Useful aliases and functions

3. 🔧 **[Git & GitHub Setup](./03-git-github/)**
   - Git installation and config
   - GitHub authentication (SSH/Token)
   - GitHub CLI integration
   - Workflow automation

</td>
<td width="50%">

#### **Part II: Development Tools**

4. 📝 **[Visual Studio Code](./04-vscode/)**
   - Extensions and themes
   - Custom settings
   - Keybindings
   - Workspace configuration

5. 🎨 **[JetBrains IDEs](./05-jetbrains/)**
   - PyCharm setup
   - IntelliJ IDEA configuration
   - Shared settings
   - Productivity plugins

6. 🔤 **[Font Installation](./06-fonts/)**
   - Nerd Fonts setup
   - Font configuration
   - Terminal fonts
   - IDE font settings

</td>
</tr>
<tr>
<td colspan="2">

#### **Part III: Linux/WSL Environment**

7. 🐧 **[WSL2 Installation & Setup](./07-wsl2-setup/)**
   - WSL2 installation guide
   - Resource allocation
   - File system integration
   - Performance optimization

8. 🛡️ **[Kali Linux Configuration](./08-kali-linux/)**
   - Kali Linux installation via WSL2
   - Tool installation and updates
   - Custom configurations
   - Pentesting workflow setup

9. ⚡ **[Arch Linux Configuration](./09-arch-linux/)**
   - Arch Linux WSL2 setup
   - Package management
   - Development environment
   - System customization

10. 🌐 **[WSL2 Networking](./10-wsl2-networking/)**
    - Network configuration
    - Port forwarding
    - Packet capture setup
    - Wireshark integration

</td>
</tr>
<tr>
<td colspan="2">

#### **Part IV: Quick Reference & Maintenance**

11. 📝 **[Commands Cheat Sheet](./11-cheat-sheet/)**
    - PowerShell commands
    - Git operations
    - WSL management
    - Network diagnostics
    - Pentesting tools

12. 🐛 **[Troubleshooting Guide](./12-troubleshooting/)**
    - Common errors and fixes
    - Performance issues
    - Network problems
    - IDE troubleshooting
    - WSL-specific issues

13. 💾 **[Backup & Restore](./13-backup-restore/)**
    - Configuration backup
    - Environment export
    - Quick restore procedures
    - Migration guide

</td>
</tr>
</table>

---

## 🚀 Quick Start Guide

### For Fresh System Setup
```powershell
# 1. Clone this handbook
git clone https://github.com/cryptpatch/Personal_Workflow_Settings.git
cd Personal_Workflow_Settings

# 2. Follow chapters sequentially (01 → 13)
# Each chapter has its own README with detailed instructions

# 3. Start with Windows Terminal
cd 01-windows-terminal
# Read README and follow steps
```

### For Specific Configuration
Jump directly to the chapter you need from the Table of Contents above.

### For Quick Reference
Head to Chapter 11 (Cheat Sheet) for command references.

---

## 💻 Current System Configuration

<table>
<tr>
<td width="50%">

### Windows Environment
- **OS**: Windows 10 Build 19045
- **Terminal**: Windows Terminal (Latest)
- **Shell**: PowerShell 7.5.4
- **Prompt**: Oh My Posh
- **Fonts**: CascadiaCode Nerd Font, BigBlueTerminal

### Development Tools
- **IDEs**: PyCharm 2025.2, IntelliJ IDEA Community 2025.2.5
- **Editor**: Visual Studio Code
- **Version Control**: Git 2.x with GitHub CLI
- **GitHub**: Authenticated as @cryptpatch

</td>
<td width="50%">

### WSL2 Environment
- **WSL Version**: WSL 2
- **Distribution 1**: Kali Linux 2025.3
- **Distribution 2**: Arch Linux (Latest)
- **Network Mode**: NAT with IP forwarding
- **Resources**: 3GB RAM, 2 CPUs

### Security Tools
- **Packet Analysis**: Wireshark (Windows + WSL)
- **Network Scanning**: Nmap, Netcat
- **Pentesting**: Metasploit, Burp Suite
- **Other**: Various Kali Linux tools

</td>
</tr>
</table>

---

## 🎓 How to Use This Handbook

### First-Time Setup
1. **Read sequentially** - Chapters build on each other
2. **Don't skip prerequisites** - Each chapter lists what's needed
3. **Test after each step** - Verify before moving forward
4. **Document changes** - Make notes of your customizations

### As a Reference
1. **Use the Table of Contents** - Find what you need quickly
2. **Check the Cheat Sheet** - Quick command lookup
3. **Troubleshooting first** - Common issues already solved
4. **Search the repo** - Use GitHub search for keywords

### For Updates & Maintenance
```bash
# Keep handbook updated
cd Personal_Workflow_Settings
git pull origin master

# Update your own fork
git add .
git commit -m "Update: [description]"
git push
```

---

## 🔧 Key Features & Highlights

### 🎨 Beautiful Terminal Experience
- ✨ Modern Windows Terminal with custom themes
- 🌈 Oh My Posh prompt with git integration
- 🎯 Nerd Font icons and ligatures
- ⚡ Fast and responsive shell

### 💻 Optimized Development Environment
- 🛠️ IDE configurations for maximum productivity
- 📦 Extension recommendations and settings
- ⌨️ Custom keybindings that make sense
- 🎨 Consistent theming across all tools

### 🐧 Powerful Linux Integration
- 🔄 Seamless Windows-Linux workflow
- 🛡️ Full Kali Linux for security testing
- ⚡ Lightweight Arch for development
- 🌐 Advanced networking capabilities

### 📚 Comprehensive Documentation
- 📝 Every step explained clearly
- 🖼️ Screenshots where helpful
- 🐛 Troubleshooting for common issues
- 💡 Tips and best practices included

---

## 🛠️ Technologies Covered

<div align="center">

![Windows](https://img.shields.io/badge/Windows-10-0078D6?style=for-the-badge&logo=windows)
![PowerShell](https://img.shields.io/badge/PowerShell-7.5.4-5391FE?style=for-the-badge&logo=powershell)
![WSL](https://img.shields.io/badge/WSL-2-FCC624?style=for-the-badge&logo=linux)
![Kali](https://img.shields.io/badge/Kali-Linux-557C94?style=for-the-badge&logo=kalilinux)
![Arch](https://img.shields.io/badge/Arch-Linux-1793D1?style=for-the-badge&logo=archlinux)

![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github)
![VSCode](https://img.shields.io/badge/VS%20Code-007ACC?style=for-the-badge&logo=visualstudiocode)
![PyCharm](https://img.shields.io/badge/PyCharm-000000?style=for-the-badge&logo=pycharm)
![IntelliJ](https://img.shields.io/badge/IntelliJ-000000?style=for-the-badge&logo=intellijidea)

</div>

---

## 📊 Handbook Statistics

- 📁 **13 Chapters** with detailed guides
- 📝 **100+** configuration files documented
- ⚡ **50+** useful commands and aliases
- 🐛 **30+** common issues solved
- 🎯 **Hours saved** with automated setups

---

## 🎯 Who Is This For?

### Perfect For:
- 👨‍💻 **Developers** setting up a new Windows dev environment
- 🔐 **Security enthusiasts** wanting WSL2 pentesting setup
- 🎓 **Students** learning system administration
- 🔄 **Anyone** who wants reproducible environment setup

### Especially Useful If You:
- Want to combine Windows and Linux workflows
- Need a pentesting environment on Windows
- Value well-documented configurations
- Prefer learning by example
- Want to understand *why*, not just *how*

---

## 🔄 Keeping This Handbook Updated

### When to Update
- ✅ After configuring something new
- ✅ When you solve a problem not documented
- ✅ If you find a better way to do something
- ✅ After major system/software updates

### How to Update
```bash
# 1. Make changes to relevant chapter
# 2. Update configuration files if changed
# 3. Test that instructions still work
# 4. Commit with descriptive message

git add .
git commit -m "Update: [Chapter] - [What changed and why]"
git push origin master
```

### Maintenance Checklist
- [ ] Verify all links work
- [ ] Test commands on fresh environment
- [ ] Update version numbers
- [ ] Check for outdated screenshots
- [ ] Review and update troubleshooting section

---

## 💡 Pro Tips

### Productivity Boosters
1. **Alias Everything** - Save time with short commands
2. **Automate Setup** - Scripts for repetitive tasks
3. **Document Immediately** - Don't trust memory
4. **Version Everything** - Git is your friend
5. **Test Regularly** - Verify backups work

### Best Practices
- 🔐 **Never commit secrets** - Use environment variables
- 📝 **Comment configurations** - Future you will thank you
- 🧪 **Test in VM first** - Before applying to main system
- 💾 **Backup before changes** - Safety first
- 🔄 **Keep it updated** - Regular maintenance prevents headaches

---

## 🐛 Troubleshooting Quick Links

Common issues and where to find solutions:

| Issue | Chapter | Quick Fix |
|-------|---------|-----------|
| Terminal not launching | [01-windows-terminal](./01-windows-terminal/) | Reinstall from Microsoft Store |
| PowerShell errors | [02-powershell](./02-powershell/) | Check execution policy |
| Git authentication fails | [03-git-github](./03-git-github/) | Regenerate tokens/SSH keys |
| WSL2 won't start | [07-wsl2-setup](./07-wsl2-setup/) | Restart WSL service |
| Network issues in WSL | [10-wsl2-networking](./10-wsl2-networking/) | Reset network adapter |
| IDE performance slow | [05-jetbrains](./05-jetbrains/) | Increase memory allocation |

For detailed troubleshooting, see [Chapter 12](./12-troubleshooting/).

---

## 📚 Additional Resources

### Official Documentation
- 📘 [Windows Terminal Docs](https://docs.microsoft.com/en-us/windows/terminal/)
- 📗 [PowerShell Documentation](https://docs.microsoft.com/en-us/powershell/)
- 📙 [WSL2 Documentation](https://docs.microsoft.com/en-us/windows/wsl/)
- 📕 [Git Documentation](https://git-scm.com/doc)

### Community Resources
- 💬 [r/PowerShell](https://reddit.com/r/PowerShell)
- 💬 [r/WSL](https://reddit.com/r/WSL)
- 💬 [r/Kalilinux](https://reddit.com/r/Kalilinux)
- 📺 [NetworkChuck YouTube](https://youtube.com/@NetworkChuck)

### Learning Paths
- 🎓 [Microsoft Learn - PowerShell](https://docs.microsoft.com/en-us/learn/powershell/)
- 🎓 [Linux Journey](https://linuxjourney.com/)
- 🎓 [GitHub Learning Lab](https://lab.github.com/)

---

## 🤝 Contributing & Feedback

### This Is a Personal Handbook, But...
Your feedback and suggestions are always welcome!

- 💡 **Suggest improvements** - Better ways to do things
- 🐛 **Report errors** - Found something wrong?
- 📚 **Share resources** - Know a great tutorial?
- 🎯 **Request topics** - Want something added?

### How to Contribute
1. Open an issue with your suggestion
2. Provide detailed explanation
3. Include examples if possible
4. Be respectful and constructive

---

## 📄 License

MIT License - Feel free to use this handbook as a template for your own documentation!

**Note**: Configuration files are provided as-is. Always review and test before applying to your system.

---

## 🙏 Acknowledgments

Built with knowledge from:
- 🌟 The open-source community
- 📚 Microsoft documentation team
- 💻 Stack Overflow contributors
- 🎥 Tech YouTubers and educators
- 🤖 GitHub Copilot for assistance

---

<div align="center">

### 📚 "Good documentation is a love letter to your future self."

**Created by**: [@cryptpatch](https://github.com/cryptpatch)  
**System**: Windows 10 + WSL2  
**Last Updated**: December 1, 2025

![Made with](https://img.shields.io/badge/Made%20with-📝%20%26%20☕-blue?style=for-the-badge)
![Maintained](https://img.shields.io/badge/Actively-Maintained-success?style=for-the-badge)

---

### ⭐ Found this helpful? Consider starring the repository!

</div>
