# https://github.com/Senzdetta/Chprompt

function utils::cprompt() {
    local cprompt=$(
        command grep -oP \
        'chprompt --use \K[^ ]+' "${lhome}"
    )
    echo -e "${cprompt}"
}

# Copyright (c) 2026 Senzdetta