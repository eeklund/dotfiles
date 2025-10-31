# load custom executable functions
for function in ~/.zsh/functions/*; do
  source $function
done

# extra files in ~/.zsh/configs/pre , ~/.zsh/configs , and ~/.zsh/configs/post
# these are loaded first, second, and third, respectively.
_load_settings() {
  _dir="$1"
  if [ -d "$_dir" ]; then
    if [ -d "$_dir/pre" ]; then
      for config in "$_dir"/pre/**/*~*.zwc(N-.); do
        . $config
      done
    fi

    for config in "$_dir"/**/*(N-.); do
      case "$config" in
        "$_dir"/(pre|post)/*|*.zwc)
          :
          ;;
        *)
          . $config
          ;;
      esac
    done

    if [ -d "$_dir/post" ]; then
      for config in "$_dir"/post/**/*~*.zwc(N-.); do
        . $config
      done
    fi
  fi
}
_load_settings "$HOME/.zsh/configs"

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases
source /Users/eeklund/.asr_aliases

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /Users/eeklund/.asr_chruby
export PKG_CONFIG_PATH="/usr/local/opt/libxml2/lib/pkgconfig"

for function in /Users/eeklund/.asr/functions/*; do
	source $function 
done
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

autoload bashcompinit && bashcompinit
source $(brew --prefix)/etc/bash_completion.d/az
ssh-add ~/.ssh/id_rsa
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/eeklund/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
