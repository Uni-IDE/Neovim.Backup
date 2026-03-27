. var/var.default

# If present, load example
if [ -f my/var.example ]; then
        . my/var.example
fi

# Load user last to override and defaults
if [ -f my/var ]; then
        . my/var
fi
