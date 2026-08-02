function tmp --description "Create and enter a temporary workspace"
    set date (date +%Y-%m-%d)

    if test (count $argv) -gt 0
        set dirname "$date-"(string join "-" $argv)
    else
        set dirname "$date"
    end

    mkdir -p $XDG_CACHE_HOME/scratch/$dirname
    pushd $XDG_CACHE_HOME/scratch/$dirname
end
