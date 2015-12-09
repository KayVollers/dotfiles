# Wiki page on the additional prompt customization options
# https://github.com/bhilburn/powerlevel9k/wiki/Stylizing-Your-Prompt

# Double-Lined Prompt
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# Disable Right Prompt
POWERLEVEL9K_DISABLE_RPROMPT=true

# Change some colors
POWERLEVEL9K_DIR_FOREGROUND='white'
POWERLEVEL9K_STATUS_BACKGROUND='red'

# Left prompt segments
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time status dir vcs)

# Print status segment only if there is an error or a forked job
POWERLEVEL9K_STATUS_VERBOSE=false

# Overwrite status prompt to print a white fail icon
# Unfortunately, POWERLEVEL9K_STATUS_FOREGROUND='white' does not work
prompt_status() {
  local symbols bg
  symbols=()

  if [[ "$POWERLEVEL9K_STATUS_VERBOSE" == true ]]; then
    if [[ "$RETVAL" -ne 0 ]]; then
      symbols+="%F{226}$RETVAL $(print_icon 'CARRIAGE_RETURN_ICON')%f"
      bg="red"
    else
      symbols+="%F{046}$(print_icon 'OK_ICON')%f"
      bg="black"
    fi
  else
    # changed from {red} to {white}
    [[ "$RETVAL" -ne 0 ]] && symbols+="%{%F{white}%}$(print_icon 'FAIL_ICON')%f"
    bg="$DEFAULT_COLOR"
  fi

  [[ "$UID" -eq 0 ]] && symbols+="%{%F{yellow}%} $(print_icon 'ROOT_ICON')%f"
  [[ $(jobs -l | wc -l) -gt 0 ]] && symbols+="%{%F{cyan}%}$(print_icon 'BACKGROUND_JOBS_ICON')%f"

  [[ -n "$symbols" ]] && "$1_prompt_segment" "$0" "$bg" "white" "$symbols"
}