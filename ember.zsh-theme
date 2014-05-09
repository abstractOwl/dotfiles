# ember theme for ZSH

local prompt_char='❤  '

# Git
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[075]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[196]%} ☂"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[082]%} ★"

# Prompt
PROMPT="%{$terminfo[bold]$FG[244]%}${prompt_char}%{$reset_color%}"
RPROMPT="%{$FG[214]%}%~/ ${git_info}%{$reset_color%}"
