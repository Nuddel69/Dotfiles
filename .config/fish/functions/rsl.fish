# Relative Symbolic Link

# Alias for creating symlinks relative to your PWD
# Usage: lln $(local source file) $(destination path)

function rsl -a source destination
    set source "$(echo $PWD)/$source"
    set dest "$(echo $PWD)/$destination"
    ln -s $source $dest
end
