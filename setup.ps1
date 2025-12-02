# GitHub Profile Enhancement - Quick Setup Script
# This script helps you apply all the enhanced READMEs to your repositories

Write-Host "🎨 GitHub Profile Enhancement Setup" -ForegroundColor Cyan
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host ""

$baseDir = "C:\Users\thirdi"
$enhancementDir = "$baseDir\github-profile-enhancement"

# Function to check if gh CLI is authenticated
function Test-GitHubAuth {
    try {
        $result = gh auth status 2>&1
        return $true
    }
    catch {
        return $false
    }
}

# Function to clone or navigate to repo
function Get-Repository {
    param (
        [string]$repoName,
        [string]$targetDir
    )
    
    if (Test-Path $targetDir) {
        Write-Host "✓ Repository '$repoName' already exists locally" -ForegroundColor Green
        Set-Location $targetDir
        git pull origin (git branch --show-current) | Out-Null
        Write-Host "✓ Updated to latest version" -ForegroundColor Green
    }
    else {
        Write-Host "↓ Cloning repository '$repoName'..." -ForegroundColor Yellow
        Set-Location $baseDir
        gh repo clone "cryptpatch/$repoName"
        Set-Location $targetDir
        Write-Host "✓ Cloned successfully" -ForegroundColor Green
    }
}

# Check GitHub authentication
Write-Host "🔐 Checking GitHub authentication..." -ForegroundColor Cyan
if (-not (Test-GitHubAuth)) {
    Write-Host "❌ Not authenticated with GitHub CLI" -ForegroundColor Red
    Write-Host "   Run: gh auth login" -ForegroundColor Yellow
    exit 1
}
Write-Host "✓ Authenticated as cryptpatch" -ForegroundColor Green
Write-Host ""

# Menu
Write-Host "What would you like to do?" -ForegroundColor Cyan
Write-Host ""
Write-Host "1. Setup ALL repositories (recommended for first time)" -ForegroundColor White
Write-Host "2. Create & setup profile repository (cryptpatch/cryptpatch)" -ForegroundColor White
Write-Host "3. Update Repo_for_learning" -ForegroundColor White
Write-Host "4. Update IDE_Environment_Setup" -ForegroundColor White
Write-Host "5. Update Personal_Workflow_Settings" -ForegroundColor White
Write-Host "6. Exit" -ForegroundColor White
Write-Host ""

$choice = Read-Host "Enter your choice (1-6)"

switch ($choice) {
    "1" {
        Write-Host "`n🚀 Setting up ALL repositories..." -ForegroundColor Cyan
        Write-Host ""
        
        # Profile Repository
        Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor DarkGray
        Write-Host "📝 Step 1: Profile Repository" -ForegroundColor Cyan
        Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor DarkGray
        
        $profileExists = gh repo view cryptpatch/cryptpatch 2>&1
        if ($profileExists -match "Could not resolve") {
            Write-Host "Creating profile repository..." -ForegroundColor Yellow
            gh repo create cryptpatch --public --description "My GitHub Profile README" --clone
            Set-Location "$baseDir\cryptpatch"
        }
        else {
            Get-Repository -repoName "cryptpatch" -targetDir "$baseDir\cryptpatch"
        }
        
        Copy-Item -Path "$enhancementDir\PROFILE_README_PROFESSIONAL.md" -Destination ".\README.md" -Force
        git add README.md
        git commit -m "Add: Professional profile README focused on skills and projects"
        git push origin main
        Write-Host "✓ Profile README updated!" -ForegroundColor Green
        Write-Host ""
        
        # Repo_for_learning
        Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor DarkGray
        Write-Host "📚 Step 2: Repo_for_learning" -ForegroundColor Cyan
        Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor DarkGray
        
        Get-Repository -repoName "Repo_for_learning" -targetDir "$baseDir\Repo_for_learning"
        Copy-Item -Path "$enhancementDir\REPO_FOR_LEARNING_README.md" -Destination ".\README.md" -Force
        git add README.md
        git commit -m "Update: Enhanced README with learning structure"
        $branch = git branch --show-current
        git push origin $branch
        Write-Host "✓ Repo_for_learning updated!" -ForegroundColor Green
        Write-Host ""
        
        # IDE_Environment_Setup
        Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor DarkGray
        Write-Host "🎨 Step 3: IDE_Environment_Setup" -ForegroundColor Cyan
        Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor DarkGray
        
        Get-Repository -repoName "IDE_Environment_Setup" -targetDir "$baseDir\IDE_Environment_Setup"
        Copy-Item -Path "$enhancementDir\IDE_ENVIRONMENT_SETUP_README.md" -Destination ".\README.md" -Force
        git add README.md
        git commit -m "Update: Comprehensive IDE configuration documentation"
        $branch = git branch --show-current
        git push origin $branch
        Write-Host "✓ IDE_Environment_Setup updated!" -ForegroundColor Green
        Write-Host ""
        
        # Personal_Workflow_Settings
        Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor DarkGray
        Write-Host "⚙️  Step 4: Personal_Workflow_Settings" -ForegroundColor Cyan
        Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor DarkGray
        
        Get-Repository -repoName "Personal_Workflow_Settings" -targetDir "$baseDir\Personal_Workflow_Settings"
        Copy-Item -Path "$enhancementDir\PERSONAL_WORKFLOW_SETTINGS_README.md" -Destination ".\README.md" -Force
        git add README.md
        git commit -m "Update: Complete handbook with enhanced navigation"
        $branch = git branch --show-current
        git push origin $branch
        Write-Host "✓ Personal_Workflow_Settings updated!" -ForegroundColor Green
        Write-Host ""
        
        Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor DarkGray
        Write-Host "🎉 All Done!" -ForegroundColor Green
        Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor DarkGray
        Write-Host ""
        Write-Host "Your GitHub profile has been enhanced! 🚀" -ForegroundColor Cyan
        Write-Host ""
        Write-Host "Next steps:" -ForegroundColor Yellow
        Write-Host "1. Visit https://github.com/cryptpatch to see your profile" -ForegroundColor White
        Write-Host "2. Pin your favorite repositories" -ForegroundColor White
        Write-Host "3. Consider making repos public to showcase your work" -ForegroundColor White
        Write-Host ""
    }
    
    "2" {
        Write-Host "`n📝 Setting up profile repository..." -ForegroundColor Cyan
        
        $profileExists = gh repo view cryptpatch/cryptpatch 2>&1
        if ($profileExists -match "Could not resolve") {
            Write-Host "Creating profile repository..." -ForegroundColor Yellow
            gh repo create cryptpatch --public --description "My GitHub Profile README" --clone
            Set-Location "$baseDir\cryptpatch"
        }
        else {
            Get-Repository -repoName "cryptpatch" -targetDir "$baseDir\cryptpatch"
        }
        
        Copy-Item -Path "$enhancementDir\PROFILE_README_PROFESSIONAL.md" -Destination ".\README.md" -Force
        git add README.md
        git commit -m "Add: Professional profile README focused on skills and projects"
        git push origin main
        Write-Host "✓ Profile README updated!" -ForegroundColor Green
    }
    
    "3" {
        Write-Host "`n📚 Updating Repo_for_learning..." -ForegroundColor Cyan
        Get-Repository -repoName "Repo_for_learning" -targetDir "$baseDir\Repo_for_learning"
        Copy-Item -Path "$enhancementDir\REPO_FOR_LEARNING_README.md" -Destination ".\README.md" -Force
        git add README.md
        git commit -m "Update: Enhanced README with learning structure"
        $branch = git branch --show-current
        git push origin $branch
        Write-Host "✓ Repo_for_learning updated!" -ForegroundColor Green
    }
    
    "4" {
        Write-Host "`n🎨 Updating IDE_Environment_Setup..." -ForegroundColor Cyan
        Get-Repository -repoName "IDE_Environment_Setup" -targetDir "$baseDir\IDE_Environment_Setup"
        Copy-Item -Path "$enhancementDir\IDE_ENVIRONMENT_SETUP_README.md" -Destination ".\README.md" -Force
        git add README.md
        git commit -m "Update: Comprehensive IDE configuration documentation"
        $branch = git branch --show-current
        git push origin $branch
        Write-Host "✓ IDE_Environment_Setup updated!" -ForegroundColor Green
    }
    
    "5" {
        Write-Host "`n⚙️  Updating Personal_Workflow_Settings..." -ForegroundColor Cyan
        Get-Repository -repoName "Personal_Workflow_Settings" -targetDir "$baseDir\Personal_Workflow_Settings"
        Copy-Item -Path "$enhancementDir\PERSONAL_WORKFLOW_SETTINGS_README.md" -Destination ".\README.md" -Force
        git add README.md
        git commit -m "Update: Complete handbook with enhanced navigation"
        $branch = git branch --show-current
        git push origin $branch
        Write-Host "✓ Personal_Workflow_Settings updated!" -ForegroundColor Green
    }
    
    "6" {
        Write-Host "`n👋 Goodbye!" -ForegroundColor Cyan
        exit 0
    }
    
    default {
        Write-Host "`n❌ Invalid choice. Please run the script again." -ForegroundColor Red
        exit 1
    }
}

Write-Host ""
Write-Host "Visit https://github.com/cryptpatch to see the changes! 🌟" -ForegroundColor Cyan
Write-Host ""

