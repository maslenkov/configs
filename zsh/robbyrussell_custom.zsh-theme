# local ret_status="%(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜)"
# PROMPT='╭─ ${ret_status} %{$fg[cyan]%}%~%{$reset_color%} $(git_prompt_info)
# ╰─ %B$%b '
local ret_status_beg="%(?:%{$fg_bold[green]%}╭─:%{$fg_bold[red]%}╭─)"
local ret_status_end="%(?:%{$fg_bold[green]%}╰─:%{$fg_bold[red]%}╰─)"
PROMPT='${ret_status_beg} %{$fg[cyan]%}%~%{$reset_color%} $(git_prompt_info)
${ret_status_end}%{$reset_color%} %B$%b '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
