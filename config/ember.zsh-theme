# ember theme for zsh
local prompt_char='λ'

# git
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[011]%}::%{$FG[014]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[009]%}±"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[082]%} "

local vi_info='$(vi_mode_prompt_info)'

# prompt
PROMPT="%{$fg_bold[magenta]%}${vi_info}$prompt_char%{$reset_color%} "
RPROMPT="%{$FG[010]%}%~/${git_info}%{$reset_color%}"

# vi-mode indicator
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true
MODE_INDICATOR="%{$fg_bold[white]%}"
