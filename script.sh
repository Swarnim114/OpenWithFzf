#!/bin/bash
kitty --title="Search" -e zsh -c "
while true; do
  file=\$(fzf)
  if [ -n \"\$file\" ]; then
    nohup xdg-open \"\$file\" >/dev/null 2>&1 &
    sleep 0.1 # Wait for 1 second to ensure the file opens
    break  # Exit the loop after opening the file
  else
    break
  fi
done
exit  # Exit the shell after the loop
"



