export print_sudoku, lines, fill
#Modified from: https://github.com/scheinerman/Sudoku.jl

"""" 
    print_sudoku(grid::Matrix)

Print a sudoku grid with a nice format
"""
function print_sudoku(grid::Matrix) ## does this function used in the script? if not maybe remove it to make it look tidy :)
    for string in lines(grid)
        println(string)
    end
    nothing
end

""" 
    lines(grid::Matrix)

Draw the edges of a Sudoku grid
"""
function lines(grid::Matrix) ## does this function used in the script? if not maybe remove it to make it look tidy :)
    horiz_piece = "---------+"
    sep_line = "+" * (horiz_piece)^3

    result = Vector{String}()
    push!(result, sep_line)

    for i=1:9
        push!(result, "|" *fill(grid[i,1:3])*"|" * fill(grid[i,4:6])*"|" * fill(grid[i, 7:9])*"|" )
        if mod(i,3) == 0
            push!(result,sep_line)
        end
    end
    return result
end


""" 
    fill(r::Vector)

Fills the sudoku grid, using " - " where zero is found,
takes as input a row vector 
"""
function fill(r::Vector) ## does this function used in the script? if not maybe remove it to make it look tidy :)
    result = ""
    for k=1:3
        a = r[k]
        result *=  a > 0 ? " $a " : " - "
    end
    result *= ""
    return result
end
