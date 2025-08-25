# GitHub Repository Setup Instructions

## Step 1: Create Repository on GitHub.com

1. **Go to GitHub.com** and log into your account
2. **Click the "+" icon** → "New repository"
3. **Repository name**: `ontario-police-use-of-force-analysis`
4. **Description**: "Ontario Police Use of Force Analysis with Snowflake Cortex Analyst - AI-powered law enforcement accountability and policy insights"
5. **Visibility**: 
   - ✅ **Public** (recommended for open police accountability research)
   - ⚠️ **Private** (if data contains sensitive information)
6. **DO NOT** initialize with README, .gitignore, or license (we already have these)
7. **Click "Create repository"**

## Step 2: Connect Local Repository to GitHub

Run these commands in your terminal (from the project directory):

```bash
# Add the remote repository (replace YOUR_USERNAME with your actual GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/ontario-police-use-of-force-analysis.git

# Push your code to GitHub
git push -u origin main
```

## Step 3: Verify Repository

1. **Refresh your GitHub repository page**
2. **Verify all files are present**:
   - README.md (should display automatically)
   - snowflake_table_definitions.sql
   - police_use_of_force_semantic_model.yaml
   - agent_response_instructions.md
   - agent_sample_prompts.md
   - SETUP_GUIDE.md
   - .gitignore

## Step 4: Configure Repository Settings (Optional)

### Add Topics/Tags
In your GitHub repository settings, add these topics:
- `snowflake`
- `cortex-analyst`
- `police-accountability`
- `data-analysis`
- `ontario`
- `law-enforcement`
- `ai-analytics`
- `public-policy`

### Create Repository Description
"AI-powered analysis of Ontario police use of force data using Snowflake Cortex Analyst. Supports evidence-based policy making and law enforcement accountability research."

### Enable Issues and Discussions
- ✅ Issues (for bug reports and feature requests)
- ✅ Discussions (for community engagement on police accountability)

## Step 5: Add Collaborators (If Needed)

1. **Go to Settings** → **Manage access**
2. **Click "Invite a collaborator"**
3. **Add relevant team members** with appropriate permissions

## Example Commands

If your GitHub username is `yourusername`, run:

```bash
git remote add origin https://github.com/yourusername/ontario-police-use-of-force-analysis.git
git push -u origin main
```

## Troubleshooting

### Authentication Issues
If you get authentication errors:
1. **Use Personal Access Token** instead of password
2. **Configure SSH keys** for easier access
3. **Use GitHub CLI**: `gh repo create` command

### Remote Already Exists
If you get "remote origin already exists":
```bash
git remote remove origin
git remote add origin https://github.com/YOUR_USERNAME/ontario-police-use-of-force-analysis.git
```

### Push Rejected
If push is rejected:
```bash
git pull origin main --allow-unrelated-histories
git push -u origin main
```

## Repository Security

### Sensitive Data Protection
- ✅ `.gitignore` protects CSV files and credentials
- ✅ No actual police data is committed
- ✅ Only analytical code and configurations

### Access Control
- Consider making repository public for transparency
- Police accountability research benefits from open access
- Code review processes for contributions

## Next Steps After GitHub Setup

1. **Share repository** with collaborators
2. **Create project board** for tracking enhancements
3. **Set up branch protection** rules for main branch
4. **Add documentation** for contributors
5. **Create releases** for stable versions
