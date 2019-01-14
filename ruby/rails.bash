# Disable Spring, in hopes of preventing the "Listen bug"
export DISABLE_SPRING=1

# Clean up fsevent watchers, another way to cope with the "Listen bug"
alias kill-fs-event-watcher='pkill -9 fsevent_wat*'
