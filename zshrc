#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#

autoload -U compinit
compinit

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

export SVN_EDITOR="vim -c \"1!svn info | grep '^URL:' | sed -e 's/.*svn:\/\/jupiter\/\(.*\)/[\1] /'\" -c 'norm $'"
export LANG=ja_JP.UTF-8

alias w3m="$HOME/local/bin/w3m"

# svn diff V (color diff)
alias -g V="| vim -R -"

HISTFILE=$HOME/.zsh-history
HISTSIZE=100000
SAVEHIST=100000
setopt share_history

# alc
function alc {
    if [ $# != 0 ]; then
        w3m -o confirm_qq=false "http://eow.alc.co.jp/$1/UTF-8/"
    fi
}

alias gae_appserver="$HOME/local/google_appengine/dev_appserver.py"
alias appcfg="$HOME/local/google_appengine/appcfg.py"
alias gaeo="$HOME/local/src/gaeo-0.3/bin/gaeo.py"
alias gaeogen="$HOME/local/src/gaeo-0.3/bin/gaeogen.py"
