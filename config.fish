if status is-interactive
    # Commands to run in interactive sessions can go here
end


# nvim shortcuts
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


bass source ~/.nvm/nvm.sh
