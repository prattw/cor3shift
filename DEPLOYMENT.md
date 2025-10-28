# Deployment Instructions

## 🌐 GitHub Setup (Manual)

Since we don't have `gh` CLI installed, create the repository manually:

1. **Create a new repository on GitHub:**
   - Go to https://github.com/new
   - Name it: `cor3shift-splash` (or your choice)
   - Don't initialize with any files
   - Click "Create repository"

2. **Push your code:**
   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/cor3shift-splash.git
   git branch -M main
   git push -u origin main
   ```
   (Replace `YOUR_USERNAME` with your actual GitHub username)

## 🚀 Heroku Deployment

### Option 1: Using Heroku CLI

1. **Install Heroku CLI:**
   ```bash
   brew install heroku/brew/heroku
   # Or download from: https://devcenter.heroku.com/articles/heroku-cli
   ```

2. **Login to Heroku:**
   ```bash
   heroku login
   ```

3. **Create Heroku app:**
   ```bash
   heroku create cor3shift-splash
   ```

4. **Deploy:**
   ```bash
   git push heroku main
   ```

5. **Open your site:**
   ```bash
   heroku open
   ```

### Option 2: Using GitHub Integration

1. Go to https://dashboard.heroku.com/new
2. Click "New" → "Create new app"
3. Name: `cor3shift-splash`
4. Choose region (US or Europe)
5. Connect to your GitHub repository
6. Enable automatic deploys (optional)
7. Click "Deploy Branch"

Your site will be live at: `https://cor3shift-splash.herokuapp.com`

## 📝 Notes

- The app uses Node.js with Express to serve the static files
- Heroku automatically detects the Node.js app from `package.json`
- The `Procfile` tells Heroku how to run the app
- The site will restart automatically if the server crashes

