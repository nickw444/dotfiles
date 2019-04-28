prompt_context() {
  # Only show the first char of the username
  prompt_segment black white "%(!.%{%F{yellow}%}.)$USER[1]@%m"
}

git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "(%{$fg_bold[black]%}${ref#refs/heads/}%{${reset_color}%})"
}