BEGIN { FS = "|" }
/^[[:space:]]*#/ || NF != 8 { next }
{
    for (i = 1; i <= NF; i++)
        gsub(/^[[:space:]]+|[[:space:]]+$/, "", $i)
}
$3 == "Mars" && $4 == "Completed" && $6 ~ /^[0-9]+$/ {
    if (!found || $6 + 0 > longest) {
        found = 1
        longest = $6 + 0
        code = $8
    }
}
END {
    if (!found) exit 1
    print code
}
