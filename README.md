# vimjob
```bash
git clone https://github.com/dlazares/vimjob ~/.vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln ~/.vim/vimrc ~/.vimrc

```


## On a fresh install..
1. `node --version` Verify you don't have node 
### Install Vim (using NVM) for CoC langauge server and type completions
1. curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
1. `export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}"  ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh"  ] && \. "$NVM_DIR/nvm.sh" # This loads nvm`
1. `nvm install node`
1. `node --version ` to verify

open vim and run `:PlugInstall`

close vim, re-open vim, and run `:CocInstall coc-tsserver` for typescript and `:CocInstall coc-pyright` for python

### For Tmux usage (fix colors)
1. `echo 'set -g default-terminal "screen-256color"' >> ~/.tmux.conf`

