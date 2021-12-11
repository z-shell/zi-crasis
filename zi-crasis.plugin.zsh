#
# No plugin manager is needed to use this file. All that is needed is adding:
#   source {where-crasis-is}/zi-crasis.plugin.zsh
#
# to ~/.zshrc.
#
# Standarized way of handling finding plugin dir, regardless of functionargzero and posixargzero,
# and with an option for a plugin manager to alter the plugin directory (i.e. set ZERO parameter)
# https://github.com/z-shell/zi/wiki/Zsh-Plugin-Standard

0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

if [[ $PMSPEC != *f* ]] {
  fpath+=( "${0:h}/functions" )
}

typeset -g ZCRASIS_REPO_DIR="${0:h}"

if [[ "${+functions[-zui_std_cleanup]}" = "0" ]]; then
  echo "Crasis uses ZUI plugin, please load https://github.com/z-shell/zui/ with your plugin manager, or source it."
fi

[[ -z "${fg_bold[green]}" ]] && builtin autoload -Uz colors && colors

autoload -- crasis -zcrasis-process-buffer

zle -N crasis
bindkey "^O^K" crasis

# vim:ft=zsh
