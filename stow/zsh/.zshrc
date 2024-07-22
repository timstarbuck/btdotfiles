# ~/.zshrc


export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

#export DOTNET_ROOT=/usr/local/share/dotnet/x64
#export PATH=$PATH:$DOTNET_ROOT
export PATH="$PATH:/Users/statim3/Documents/source/development/flutter/bin"
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
export PATH="/Users/statim3/.local/bin:$PATH"
#export PATH=$PATH:$HOME/dotnet
#export DOTNET_ROOT=$HOME/dotnet
export DOTNET_ROOT=/usr/local/share/dotnet

export NODE_EXTRA_CA_CERTS=/Users/statim3/BoysTownCerts.pem
export OPENSSL_CONF=~/openssl.cnf

eval "$(starship init zsh)"

eval "$(rbenv init - zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


# pnpm
export PNPM_HOME="/Users/statim3/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

