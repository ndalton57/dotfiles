# when leaving the console clear the screen to increase privacy

if [ "$SHLVL" = 1 ]; then
    [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
fi

# Clear SSH keys from agent
ssh-add -D

# Clear PGP keys
gpg-connect-agent reloadagent /bye
