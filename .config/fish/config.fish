if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#eval /home/matsb2/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

set -xU LIBRARY_PATH /usr/local/lib
set -xU C_INCLUDE_PATH /usr/local/include
set -xU LD_LIBRARY_PATH /usr/local/lib
