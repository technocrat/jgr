!/usr/bin/awk -f

BEGIN { FS = "\t"; OFS = "," }
{
    for(i = 1; i <= NF; i++) {
        if ($i + 0 == $i) { $i = "=" $i }
        else gsub(/"/, "\"\"", $i);
        $i = "\"" $i "\""
    }
    print
}
