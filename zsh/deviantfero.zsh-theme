if [ $UID -eq 0 ]; then CARETCOLOR="red"; else CARETCOLOR="blue"; fi

local return_code="%(?..%{$fg_bold[red]%}%? ↵%{$reset_color%})"

function get_pwd(){
  git_root=$PWD
  while [[ $git_root != / && ! -e $git_root/.git ]]; do
    git_root=$git_root:h
  done
  if [[ $git_root = / ]]; then
    unset git_root
    prompt_short_dir=%~
  else
    parent=${git_root%\/*}
    prompt_short_dir=${PWD#$parent/}
  fi
  echo $prompt_short_dir
}

PROMPT='%{${fg_bold[cyan]}%}%m%{${fg_bold[blue]}%} %{$reset_color%}%{${fg_bold[green]}%}$(get_pwd) $(git_prompt_info)%{${fg_bold[$CARETCOLOR]}%}%%%{${reset_color}%} '

RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}git:("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[yellow]%})%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} +"
