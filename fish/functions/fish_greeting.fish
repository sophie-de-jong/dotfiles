function fish_greeting --description "Greet the user with system information"
    # Only run hyfetch in interactive terminal mode.
    if status is-interactive
        hyfetch
    end
end
