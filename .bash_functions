# Add Commit only
function ac() {
       git add .;
       git commit -m "$1"
}


vo() {
    local dir
    dir=$(find ${1:-.} -type d \( ! -path "*/.*" -and ! -path "*/node_modules/*" \) 2> /dev/null | fzf) && cd "$dir" && nvim .
}

function sdrr () {
      open /Applications/Docker.app
      sleep 20
      d start red
      d start rmq
}


function sd () {
      open /Applications/Docker.app
}

# Add Commit push
function acp() {
       git add .;
       git commit -m "$1"
       # Calulate Current Branch
       cb=$(git branch | grep '[*]' | sed 's/* //g');
       # Push into server;
       git push origin $cb;
}

function gpl(){
       cb=$(git branch | grep '[*]' | sed 's/* //g');
       git pull origin $cb;
}


function tns() {
  if [ -z "$1" ]; then
    echo "Usage: tns <session_name>"
    return 1
  fi

  local SESSION_NAME=$1

  # Check if the session already exists
  if tmux has-session -t "$SESSION_NAME" 2>/dev/null; then
    echo "Session $SESSION_NAME already exists. Attaching to it..."
    tmux attach-session -t "$SESSION_NAME"
    return 0
  fi

  echo "Starting new tmux session..."
  tmux new-session -d -s "$SESSION_NAME" || { echo "Failed to create tmux session."; return 1; }

  echo "Splitting window..."
  tmux split-window -v -p 30 -t "$SESSION_NAME:1.1" || { echo "Failed to split window."; return 1; }

  echo "Sending keys to vim..."
  tmux send-keys -t "$SESSION_NAME:1.1" 'vim .' C-m || { echo "Failed to send keys to vim."; return 1; }

  echo "Creating new window named 'empty'..."
  tmux new-window -t "$SESSION_NAME:2" -n 'empty' || { echo "Failed to create new window."; return 1; }

  echo "Selecting window 1..."
  tmux select-window -t "$SESSION_NAME:1" || { echo "Failed to select window 1."; return 1; }

  echo "Selecting pane 1.1..."
  tmux select-pane -t "$SESSION_NAME:1.1" || { echo "Failed to select pane 1.1."; return 1; }

  echo "Attaching to session..."
  tmux attach-session -t "$SESSION_NAME"
}
