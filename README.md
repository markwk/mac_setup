# Mark's "Sweet Setup" on Mac

This is a collection of scripts to automatically install various useful applications and setup my own "Sweet Setup" on a Mac OS computer. Using a brewfile and a bashscript, it installs dozens of programs and configures my computer to get up and running quickly. 

To Run, navigate into the the directory and run `./install.sh`

Noteworthy: 

- This file can be rerun if you want to edit and add more stuff later. 
Depending on your internet connection, this may take some time to run. 
- Since there are an aweful lot of dependencies, there might be errors too. Comment out what doesn't work initially and re-run later. 

##### What it includes: 
- Installs Homebrew.
- Using BrewFile, installs various applications I find useful like iTerm, alfred, keeweb, and many others. Edit BrewFile to set your own key programs. 
- Installs Zsh and oh-my-Zsh for nice stuff in command line. 
- Installs Python3 as well as separate environments for some useful basic coding and data science needs in Python. 
- Installs rclone, a useful tool for cloud syncing. 

#### Recommended Usage
- I recommend commenting out non-essentials in the brewfile (especially `mas` installation) and run a minimal version to start. 
- Start by installing just the basics like a browser, password manager, dropbox, and maybe Alfred. 
- Once things are working fine in a minimal way, go ahead and uncomment everything your and re-run. 
- You'll still need to log into various services to configure and finalize it.  

#### Future Ideas and Todo's
- Dotfiles: Incomplete and a bit rough. I just did it manually but should automate this more. 
- Automation Scripts: Various automation and cron scripts should be configured and during installation process. 
- 
