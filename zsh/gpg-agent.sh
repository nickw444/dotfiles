

envfile="$HOME/.gnupg/gpg-agent.env"
if [[ -e "$envfile" ]] && kill -0 $(grep GPG_AGENT_INFO "$envfile" | cut -d: -f 2) 2>/dev/null; then
    eval "$(cat "$envfile")"
    GPG_AGENT_STATUS="Running"
else
    eval "$(gpg-agent --daemon --enable-ssh-support --write-env-file "$envfile")"
    GPG_AGENT_STATUS="Started"
fi
export GPG_AGENT_INFO  # the env file does not contain the export statement
export SSH_AUTH_SOCK   # enable gpg-agent for ssh
export GPG_AGENT_STATUS