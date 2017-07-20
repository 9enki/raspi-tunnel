su -l pi -c 'tmux new-session -s "tunneling" -d -n "tunneling"'
su -l pi -c 'tmux set-option -t "tunneling" set-remain-on-exit on'
su -l pi -c 'tmux send-keys -t "tunneling" "autossh -i [your pem location] -R [user]@[ip address]:8022:localhost:22 [user]@[ip address]" Enter'
