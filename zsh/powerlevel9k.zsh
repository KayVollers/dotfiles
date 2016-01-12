# Wiki page on the additional prompt customization options
# https://github.com/bhilburn/powerlevel9k/wiki/Stylizing-Your-Prompt

# Double-Lined Prompt
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# Disable Right Prompt
POWERLEVEL9K_DISABLE_RPROMPT=true

# Change some colors
POWERLEVEL9K_DIR_HOME_FOREGROUND='white'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='white'

# Print status segment only if there is an error or a forked job
POWERLEVEL9K_STATUS_VERBOSE=false

# Left prompt segments
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status background_jobs_joined root_indicator_joined time dir vcs)
