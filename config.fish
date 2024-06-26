if status is-interactive
    # Commands to run in interactive sessions can go here
end



function nd
    nvim .
end

function n
    nvim $argv
end
# git add all
function gaa
    git add .
end

function gc
    git commit -m "$argv"
end

function gp
    git push
end

# Python HTTP server
function pythonServer
    python3 -m http.server
end

# List and kill Python HTTP servers
function listPythonServers
    sudo lsof -i -P -n | grep LISTEN | grep python
end

function killPythonServers
    sudo lsof -i -P -n | grep LISTEN | grep python | awk '{print $2}' | xargs kill
end

# Open file explorer
function fe
    xdg-open .
end

# Postman
function postman
    /opt/Postman/Postman
end

function fcd
    set file (fzf --query="$argv" --select-1 --exit-0)
    if test -n "$file"
        cd (dirname $file)
    end
end


function bd
    set file (fzf --query="$argv[1]" --select-1 --exit-0 --preview 'bat --style=numbers --color=always --line-range=:500 {}')
    if test -n "$file"
        cd (dirname "$file")
    end
end






set -gx NVM_DIR "$HOME/.nvm"
bass source $NVM_DIR/nvm.sh >/dev/null ^/dev/null
