# ember theme for ZSH

local prompt_char='❤  '

# Git
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ☂"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ★"

# Prompt
PROMPT="%{$fg_bold[red]%}${prompt_char}%{$reset_color%}"
RPROMPT="%{$fg_bold[magenta]%}%~/ ${git_info}%{$reset_color%}"
