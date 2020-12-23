# Shell Scripts  
Repository to hold useful shell scripts.  

## Install  
Install assumes you house your repositories in `~/code` (this is where I house them).  

```bash  
git clone https://github.com/Jason-Adam/sh-scripts.git ~/code \
    && cd ~/code/sh-scripts \
    && sh _install.sh
```  

All the non-install scripts will be symlinked into `~/bin` (will need to be added to your path). They are already checked in with `chmod +x filename.sh` permissions.  

## Running Scripts  
Once the scripts are installed, they can be run from anywhere by using their name without the `.sh` suffix.  

Example of loading `.env` file into python virtual environment:  

```bash  
load-env dev.env
```
