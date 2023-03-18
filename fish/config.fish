if status is-interactive
    # Commands to run in interactive sessions can go here
    source (lua /mnt/d/gitcodes/z.lua/z.lua --init fish enhanced | psub)
    alias zf="z -I"
    alias zb="z -b"
    alias zz="cd"
    # >>> conda initialize >>>
    # !! Contents within this block are managed by 'conda init' !!
    if test -f /home/innersea/anaconda3/bin/conda
        eval /home/innersea/anaconda3/bin/conda "shell.fish" "hook" $argv | source
    end
    # <<< conda initialize <<<
end


