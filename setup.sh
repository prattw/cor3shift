#!/bin/bash

echo "🚀 Setting up Cor3Shift Splash Page for GitHub and Heroku deployment"
echo ""

# Check if repository name is provided
if [ -z "$1" ]; then
    echo "❌ Error: Please provide a GitHub repository name"
    echo "Usage: ./setup.sh YOUR_GITHUB_REPO_NAME"
    echo ""
    echo "Step 1: Create a new repository on GitHub (https://github.com/new)"
    echo "        Name it: YOUR_GITHUB_REPO_NAME"
    echo "        Don't initialize with README"
    echo ""
    echo "Step 2: Run this script: ./setup.sh YOUR_GITHUB_REPO_NAME"
    exit 1
fi

REPO_NAME=$1
echo "📦 Repository name: $REPO_NAME"
echo ""

# Add GitHub remote
echo "➕ Adding GitHub remote..."
git remote add origin https://github.com/$REPO_NAME.git

# Push to GitHub
echo "📤 Pushing to GitHub..."
git branch -M main
git push -u origin main

echo ""
echo "✅ Successfully pushed to GitHub!"
echo "🌐 View your repo at: https://github.com/$REPO_NAME"
echo ""
echo "📋 Next steps for Heroku deployment:"
echo "   1. Install Heroku CLI: https://devcenter.heroku.com/articles/heroku-cli"
echo "   2. Run: heroku login"
echo "   3. Run: heroku create cor3shift-splash"
echo "   4. Run: git push heroku main"
echo ""

