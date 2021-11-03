#
# No plugin manager is needed to use this file. All that is needed is adding:
#   source {where-crasis-is}/zinit-crasis.plugin.zsh
#
# to ~/.zshrc.
#

0="${(%):-%N}" # this gives immunity to functionargzero being unset
export ZCRASIS_REPO_DIR="${0%/*}"

if [[ "${+functions[-zui_std_cleanup]}" = "0" ]]; then
    echo "Crasis uses ZUI plugin, please load https://github.com/z-shell/zui/ with your plugin manager, or source it."
fi

#
# Update FPATH if:
# 1. Not loading with Zplugin
# 2. Not having fpath already updated (that would equal: using other plugin manager)
#

if [[ -z "$ZPLG_CUR_PLUGIN" && "${fpath[(r)$ZCRASIS_REPO_DIR]}" != $ZCRASIS_REPO_DIR ]]; then
    fpath+=( "$ZCRASIS_REPO_DIR" )
fi

[[ -z "${fg_bold[green]}" ]] && builtin autoload -Uz colors && colors

autoload -- crasis -zcrasis-process-buffer

zle -N crasis
bindkey "^O^K" crasis

# vim:ft=zsh
