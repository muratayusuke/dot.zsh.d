# emacs config
export EDITOR=emacsclient
export ALTERNATE_EDITOR='emacs'
if [ $OSTYPE = "darwin" ]; then
  alias emacs='open /Applications/Emacs.app/Contents/MacOS/Emacs'
  alias emacsclient='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -n'
fi
alias es='XMODIERS="@im=none" emacs 2>/dev/null &'
alias e='emacsclient -n'
