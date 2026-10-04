# https://github.com/Senzdetta/Chprompt

function utils::getblock() {
    local sec="${1}"
    local file="${2}"

    command awk -v s="${sec}" '
        $0 == "[" s "]" {flag=1; next}
        $0 == "[END]" {if(flag) exit; flag=0}
        flag
    ' "${file}"
}

# Copyright (c) 2026 Senzdetta