# NVM (Node Version Manager) setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion (hitting tab to see options)

# Random Emoji Generator
random_emoji() {
    local emojis=("🎮" "💾" "📀" "🫧" "🎉" "⭐" "🔨" "🧢" "😡" "🥸" "👺" "👻" "😸" "🙈" "🐸" "🐼" "🐻" "🐨" "🐽" "🐾" "🦧" "🦥" "🐢" "🐍" "🐉" "🦖" "🦦" "🐳" "🦑" "🦐" "🐦‍🔥" "🦚" "🐧" "🐥" "🦂" "👀" "🧙‍♂️" "🤹‍♂️" "👑" "💎" "⛳" "🎯" "🪄" "🎲" "🎰" "🧸" "🃏" "🔧" "🪛" "⚙️" "⚗️" "🧪" "🛡️" "🪦" "🪫" "🔌" "🍟" "🍿" "🥨" "🍙" "🍣" "🍦" "🍪" "🍷" "🍺" "🥝" "🍇" "🫐" "🍋" "🍋‍🟩" "🏎️" "🛸" "⛩️" "🏯" "♨️" "🌚" "🌀" "🔱" "💮")

    # Generate a random index to select an emoji from the array
    local rand_idx=$(( RANDOM % ${#emojis[@]} ))

    # Print the selected emoji without a newline
    echo -n "${emojis[$rand_idx]}"
}

# A builder function that sets your prompt variables
set_my_prompt() {
    # Get a random emoji for the prompt
    local emoji=$(random_emoji)

    # Bright red color code for the directory part of the prompt
    local bright_red="\[\033[1;31m\]"

    # Reset color so that the emoji and the directory are in bright red, but the rest of the prompt is in default color
    local reset="\[\033[0m\]" 

    # Set the username to be displayed in the prompt
    local username="XDAV"

    # Set the PS1 variable to include the opening statement, random emoji and the current working directory in bright red
    export PS1="${bright_red}${username}${reset} \n ${emoji}  ${bright_red}\w${reset} \$ "
}

export PROMPT_COMMAND=set_my_prompt