# # **Hands-On Guide: Version Control in RStudio Using Git**
# 
# ## **Introduction to Version Control**
# 
# Version control helps track changes in your code, allowing you to go back to previous versions, collaborate with others, and maintain a clean project history. Without version control, managing changes across multiple files can become chaotic. **Git** is the most widely used version control system, and **RStudio has built-in Git integration**, making it easy to manage your code efficiently.
# 
# ---
#   
#   ## **Setting Up Git in RStudio**
#   Before using Git in RStudio, it must be installed and configured. Below are the steps, along with explanations of why each step is necessary.
# 
# ### **1. Install Git**
# Git is not included with RStudio by default, so you need to install it separately.
# 
# #### **For Windows**
# 1. Download Git from [https://git-scm.com/downloads](https://git-scm.com/downloads).
# 2. Run the installer and accept the default settings.
# 3. Restart your computer if necessary.
# 
# #### **For macOS**
# 1. Open the **Terminal** and type:
#   ```sh
# git --version
# ```
# 2. If Git is not installed, install it using:
#   ```sh
# xcode-select --install
# ```
# 
# #### **For Linux**
# 1. Open the **Terminal** and run:
#   ```sh
# sudo apt install git  # For Debian/Ubuntu
# sudo yum install git  # For Red Hat/CentOS
# ```
# 
# **Why is this step necessary?**  
#   Git is a separate software that RStudio relies on for version control. Installing Git provides the essential commands that RStudio will use to track changes in your code.
# 
# ---
#   
#   ### **2. Link Git to RStudio**
#   Once Git is installed, RStudio needs to know where to find it.
# 
# 1. Open **RStudio**.
# 2. Go to **Tools → Global Options → Git/SVN**.
# 3. Click **Browse** and locate the Git executable:
#   - **Windows**: `C:/Program Files/Git/bin/git.exe`
# - **macOS/Linux**: `/usr/bin/git`
# 4. Click **Apply** and **OK**.
# 
# **Why is this step necessary?**  
#   RStudio does not automatically know where Git is installed. By selecting the Git executable, you ensure that RStudio can use Git commands properly.
# 
# ---
#   
#   ### **3. Configure Git with Your Identity**
#   Now that Git is installed and connected to RStudio, you need to configure your name and email.
# 
# 1. Open the **Terminal** in RStudio (or use your system terminal).
# 2. Run the following commands, replacing the placeholders with your information:
#   ```sh
# git config --global user.name "Your Name"
# git config --global user.email "your_email@example.com"
# ```
# 
# **Why is this step necessary?**  
#   Git tracks who makes changes to the code. This step ensures that every commit you make is associated with your name and email.
# 
# ---
#   
#   ## **Creating a Git-Enabled Project in RStudio**
#   Now that Git is set up, let’s create a new RStudio project that uses Git for version control.
# 
# ### **1. Create a New RStudio Project with Git**
# 1. Open **RStudio**.
# 2. Go to **File → New Project**.
# 3. Choose **New Directory**.
# 4. Select **Empty Project**.
# 5. Check the box **Create a Git repository**.
# 6. Click **Create Project**.
# 
# **Why is this step necessary?**  
#   This creates a local Git repository inside your project folder, allowing you to track changes from the beginning.
# 
# ---
#   
#   ### **2. Verify Git is Working in RStudio**
#   Once the project opens, you should see a **Git** tab in the top-right panel. If you don’t see it, restart RStudio.
# 
# **Why is this step necessary?**  
#   The Git tab provides an interface to commit changes, push to GitHub, and pull updates from collaborators.
# 
# ---
#   
#   ## **Making Your First Commit**
#   A **commit** is a snapshot of your project at a specific moment. It allows you to save changes and keep a record of what was modified.
# 
# ### **1. Commit Changes in RStudio**
# 1. Go to the **Git** tab.
# 2. Click the checkbox next to each file you want to include in the commit.
# 3. Click **Commit**.
# 4. In the pop-up window, write a **meaningful commit message** (e.g., "Initial project setup").
# 5. Click **Commit**.
# 6. Close the commit window.
# 
# **Why is this step necessary?**  
#   Committing saves a version of your work that you can return to later if needed.
# 
# ---
#   
#   ## **Connecting RStudio to GitHub**
#   To store your project online and collaborate with others, you need to link it to GitHub.
# 
# ### **1. Create a GitHub Repository**
# 1. Go to [https://github.com](https://github.com) and log in.
# 2. Click **New Repository**.
# 3. Give it a name (e.g., `my-r-project`).
# 4. Do **not** initialize it with a README (RStudio will handle this).
# 5. Click **Create Repository**.
# 
# **Why is this step necessary?**  
#   A GitHub repository provides an online backup of your project and enables collaboration.
# 
# ---
#   
#   ### **2. Link Your RStudio Project to GitHub**
#   1. Open the **Terminal** in RStudio.
# 2. Run the following commands, replacing the URL with your repository’s actual URL:
#   ```sh
# git remote add origin https://github.com/yourusername/my-r-project.git
# git branch -M main
# git push -u origin main
# ```
# 
# **Why is this step necessary?**  
#   This links your local repository with the remote repository on GitHub, enabling you to push updates.
# 
# ---
#   
#   ## **Pushing and Pulling Changes**
#   Once your project is connected to GitHub, you can upload changes (**push**) and download updates (**pull**).
# 
# ### **1. Push Your Changes to GitHub**
# 1. Click the **Git** tab in RStudio.
# 2. Click **Push**.
# 
# Alternatively, you can use the Terminal:
#   ```sh
# git push origin main
# ```
# 
# **Why is this step necessary?**  
#   Pushing uploads your commits to GitHub, making them accessible from any device.
# 
# ---
#   
#   ### **2. Pull Updates from GitHub**
#   If changes have been made on GitHub, download them into your local project.
# 
# 1. Click the **Git** tab in RStudio.
# 2. Click **Pull**.
# 
# Alternatively, use the Terminal:
#   ```sh
# git pull origin main
# ```
# 
# **Why is this step necessary?**  
#   Pulling ensures that you are working with the most up-to-date version of your project.
# 
# ---
#   
#   ## **Using Branches to Work on Features Separately**
#   Branches allow you to work on different features independently without affecting the main project.
# 
# ### **1. Create a New Branch**
# 1. Open the **Terminal**.
# 2. Run:
#   ```sh
# git branch new-feature
# git checkout new-feature
# ```
# or in newer versions:
#   ```sh
# git switch -c new-feature
# ```
# 
# **Why is this step necessary?**  
#   Using branches prevents unfinished work from affecting the main project.
# 
# ---
#   
#   ### **2. Merge the Branch into Main**
#   1. Switch back to the main branch:
#   ```sh
# git checkout main
# ```
# 2. Merge the feature branch:
#   ```sh
# git merge new-feature
# ```
# 3. Push the updated main branch to GitHub:
#   ```sh
# git push origin main
# ```
# 
# **Why is this step necessary?**  
#   Merging integrates completed work from a branch into the main project.
# 
# ---
#   
#   ## **Undoing Mistakes**
#   ### **1. Undo the Last Commit**
#   ```sh
# git reset --soft HEAD~1
# ```
# ### **2. Discard Local Changes**
# ```sh
# git checkout -- filename.R
# ```
# ### **3. Revert a Pushed Commit**
# ```sh
# git revert HEAD
# git push origin main
# ```
# 
# **Why is this step necessary?**  
#   These commands help you recover from mistakes while maintaining a clean project history.
# 
# ---
#   
#   ## **Final Thoughts**
#   Git provides a structured way to track changes, collaborate, and safeguard your work. Mastering Git in RStudio will enhance your workflow and prevent versioning issues. Practicing these steps will help build confidence in using version control effectively.