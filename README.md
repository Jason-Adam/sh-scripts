# Shell Scripts  
Repository to hold useful shell scripts.  

## Install  

```bash  
mkdir -p ~/code \
    && git clone https://github.com/Jason-Adam/sh-scripts.git ~/code \
    && . ~/code/sh-scripts/_install.sh
```  

All the non-install scripts will be symlinked into `~/bin` (will need to be added to your path). They are already checked in with `chmod +x filename.sh` permissions.  

Add the following line to your `.zshrc` or `.bashrc` file:  

```bash  
export PATH="$HOME/bin:$PATH"
```

## Running Scripts  
Once the scripts are installed, they can be run from anywhere by using their name without the `.sh` suffix.  

Example of loading `.env` file into python virtual environment:  

```bash  
load-env dev.env
```
