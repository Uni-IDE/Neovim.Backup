A Neovim Lua plugin that can runs in command line! Upon restore it will save a "session" with your open files & scratchpads, load the restored configuration, then restore your last session. Uses a snapshotting model to quickly save configuration & plugin changes.

# Commands:
:nbac save
:nbac restore {snapshot}
:nbac list
