# humble arrogance - a minimal ohmyzsh theme

#PROMPT='%F{green}%n%f@%F{yellow}%m :: %F{green}%~ %F{reset}$(git_prompt_info) %F{green}%# %f %B%F{#ffce06}%f%b ❱ '
#RPROMPT='%F{green}%T %f'

# theme colors
PROMPT_DASHES_COLOR="%F{#2f3b54}"       # dashes
PROMPT_USER_COLOR="%F{green}"           # user
PROMPT_HOST_COLOR="%F{#77e65c}"         # host
PROMPT_SEPARATOR_COLOR="%F{green}"      # separator
PROMPT_DIR_COLOR="%F{#8eec77}"          # directory
PROMPT_GIT_COLOR="%F{green}"            # git info
PROMPT_SYMBOL_COLOR="%B%F{#ffce06}%f%b" # symbol
RPROMPT_TIME_COLOR="%F{#ffce06}"        # right (time)
DARK_GREY="%F{#2f3b54}"
DEFAULT="%F{#2196f3}"
CHAR_ARROW="%F{green}➜"                 # ➜ › »


# generate line
generate_dashes() {
  local dashes=""
  local width="$(tput cols)"
  local i

  for ((i = 1; i <= width; i++)); do
    dashes+="-"
  done

  echo "$dashes"
}

#${PROMPT_HOST_COLOR}%m@
PROMPT="${PROMPT_DASHES_COLOR}${DASHED_LINE}%f
${PROMPT_USER_COLOR}%n%f ${DEFAULT}in ${PROMPT_DIR_COLOR}%~ ${PROMPT_GIT_COLOR}$(git_prompt_info) ${PROMPT_SYMBOL_COLOR} %f
${CHAR_ARROW}%f "

DASHED_LINE="$(generate_dashes)"

RPROMPT="${RPROMPT_TIME_COLOR}%T %f"

ZSH_THEME_GIT_PROMPT_PREFIX="%F{green}[%f"
ZSH_THEME_GIT_PROMPT_SUFFIX="%F{green}]%f"
ZSH_THEME_GIT_PROMPT_DIRTY="%F{red} ✗%f"
ZSH_THEME_GIT_PROMPT_CLEAN="#%F{green} ✓%f"

