# Powerlevel10k instant prompt. Keep near the top.
# Anything that may require console input (password prompts, [y/n]) goes above this.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ---- Oh My Zsh ----
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)
source "$ZSH/oh-my-zsh.sh"

# ---- PATH ----
export BUN_INSTALL="$HOME/.bun"
export PNPM_HOME="$HOME/Library/pnpm"
export CC="/opt/homebrew/opt/llvm/bin/clang"
export CXX="$CC++"
export LDFLAGS="$LDFLAGS -L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="$CPPFLAGS -I/opt/homebrew/opt/llvm/include"

typeset -U path PATH
path=(
  "$HOME/.local/python-bin/"
  /opt/homebrew/opt/llvm/bin
  /opt/homebrew/bin
  /opt/homebrew/sbin
  "$PNPM_HOME/bin"
  "$HOME/.opencode/bin"
  "$HOME/.dcc"
  /usr/local/texlive/2026/bin/universal-darwin
  "$BUN_INSTALL/bin"
  /opt/homebrew/opt/sqlite/bin
  /usr/local/bin
  "$HOME/.local/bin"
  $path
)

# ---- Environment ----
export GPG_TTY=$(tty)
export HOMEBREW_NO_ENV_HINTS=1
export SSH_AUTH_SOCK="$HOME/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"

# CSE
export CSE_ZID={{ zid }}
export BIWA_SSH_USER={{ zid }}
export BIWA_SSH_HOST=login.cse.unsw.edu.au

# ---- Scripts ----
for _f in "$HOME"/.config/zsh/scripts/*.zsh(N); do
  source "$_f"
done
unset _f

# ---- Aliases ----
alias code='codium'
alias gits='git status'
alias uni='cd ~/uni'

# ---- Version manager (must come after PATH) ----
eval "$(~/.local/bin/mise activate zsh)"

# ---- Prompt ----
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> otty shell integration >>>
# Added by Otty — toggle in Settings > Shell > Shell Integration.
# Inert unless launched by Otty (it sets $OTTY_SHELL_INTEGRATION).
if [ -n "$OTTY_SHELL_INTEGRATION" ] && [ -r "$OTTY_SHELL_INTEGRATION/otty-integration.zsh" ]; then
  . "$OTTY_SHELL_INTEGRATION/otty-integration.zsh"
fi
# <<< otty shell integration <<<

# Zoxide
eval "$(zoxide init --cmd cd zsh)"
