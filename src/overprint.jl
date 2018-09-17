module Cursor
    # \u1b  = dec \033
    const ERASE_TO_EOL = "\u1b[K"
    const UP1 = "\u1b[A"
    up(n) = "\u1b[$(n)A"
    const MOVE_TO_SOL = "\r" #i Carriage Return
end

function move_cursor_up_while_clearing_lines(io, numlinesup)
    for _ in 1:numlinesup
        print(io, Cursor.MOVE_TO_SOL * Cursor.ERASE_TO_EOL * Cursor.UP1)
    end
    print(io, Cursor.MOVE_TO_SOL * Cursor.ERASE_TO_EOL * Cursor.MOVE_TO_SOL)
end

function printover(io::IO, s::AbstractString, color::Symbol = :color_normal)
    if isdefined(Main, :ESS) || isdefined(Main, :Atom)
        print(io, Cursor.MOVE_TO_SOL)         # go to first column
    elseif isdefined(Main, :IJulia)
        print(io, Cursor.MOVE_TO_SOL)         # go to first column
        printstyled(io, s; color=color) # Jupyter notebooks support ANSI color codes
        Main.IJulia.stdio_bytes[] = 0 # issue #76: circumvent IJulia I/O throttling
    else
        print(io, Cursor.MOVE_TO_SOL)         # go to first column
        printstyled(io, s; color=color)
        print(io, Cursor.ERASE_TO_EOL)     # clear the rest of the line
    end
end
