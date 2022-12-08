if status --is-login
	if test (tty) = /dev/tty1
		exec startx
	end
end

# function fish_prompt -d "Write out the prompt"
#     # This shows up as USER@HOST /home/user/ >, with the directory colored
#     # $USER and $hostname are set by fish, so you can just use them
#     # instead of using `whoami` and `hostname`
#     printf '%s@%s %s%s ' $hostname \
#         (set_color $fish_color_cwd) (prompt_pwd) (set_color $fish_color_cwd)
# end
#

function sudo --description "Replacement for Bash 'sudo !!' command to run last command using sudo."
    if test "$argv" = !!
    eval command sudo $history[1]
else
    command sudo $argv
    end
end

alias grep="grep --color=auto"
alias cat="batcat --style plain --paging never"
alias ls="exa --group-directories-first"
alias tree="exa -T"
alias la="exa -la --group-directories-first"
alias l="exa -l"
alias v="nvim ."

function fish_greeting
end


