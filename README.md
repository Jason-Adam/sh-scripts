# Shell Scripts  
Repository to hold useful shell scripts.  

## Install  

```bash  
mkdir -p "$HOME"/code &&
    git clone https://github.com/Jason-Adam/sh-scripts.git "$HOME"/code &&
    cd "$HOME"/code &&
    ./_install.sh
```  

All the non-install scripts will be symlinked into `"$HOME"/bin` (will need to be added to your path). They are already checked in with `chmod +x filename.sh` permissions.  

Add the following line to your `.zshrc` or `.bashrc` file:  

```bash  
export PATH="$HOME/bin:$PATH"
```

## Running Scripts  
Once the scripts are installed, they can be run from anywhere by using their name without the `.sh` suffix.  

Example of loading linters and formatters into a python virtual environment:  

```bash  
py-deps
```
