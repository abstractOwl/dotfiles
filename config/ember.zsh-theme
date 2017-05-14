# ember theme for ZSH

local prompt_char='λ'

# Git
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[011]%}:%{$FG[014]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[009]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[082]%} "

# Prompt
PROMPT="%{$terminfo[bold]$FG[003]%}${prompt_char}>%{$reset_color%} "
RPROMPT="%{$FG[010]%}%~/${git_info}%{$reset_color%}"
