export ZSH_EXT_BASE=$HOME/.zsh.d

# TIP: Add files you don't want in git to .gitignore
for config_file ($ZSH_EXT_BASE/lib/*.zsh) source $config_file

# load plugins
for plugin ($ZSH_EXT_BASE/plugins/*) {
  plugin_name=`basename $plugin`
  source $ZSH_EXT_BASE/plugins/$plugin_name/$plugin_name.plugin.zsh
}

case ${OSTYPE} in
  darwin*)
    # for Mac
	;;
  *)
    # other
    /usr/bin/gnome-keyring-daemon --start --components=pkcs11 1>/dev/null
	;;
esac

autoload -U compinit
compinit -i

