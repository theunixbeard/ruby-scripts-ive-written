require 'set'

DIMENSION = 3
def get3by3 grid, offset, offset2
    offset_end = offset + 3
    offset2_end = offset2 + 3
    ret_array = Array.new
    for i in offset...offset_end do
        for j in offset2...offset2_end do
            ret_array << grid[i][j]
        end
    end
    return ret_array
end


# function that takes 2d array, which is a 9x9 sudoku grid
# return whether it is true or false (valid solution)

def sudoku_valid? grid
    
    # grid has first index for row, 2nd index for column
    
    # Check every row
    grid.each do |row|
        seen = Set.new
        (0..9).each do |row_value|
            if !seen.add?(row_value)
                return false
            end
        end
    end
    
    # Check every column
    grid.each do |row|
        seen = Set.new
        row.each do |col_value|
            if !seen.add?(col_value)
                return false
            end
        end
    end
    
    # Check every 3x3
    [0,3,6].each do |offset|
        [0,3,6].each do |offset2|
            to_check = get3by3 grid, offset, offset2
            seen = Set.new
            to_check.each do |value|
                if !seen.add?(value)
                    return false
                end
            end
        end
    end
    
    
    return true
end

sudoku_correct =[[8,3,5,4,1,6,9,2,7],
               [2,9,6,8,5,7,4,3,1],
               [4,1,7,2,9,3,6,5,8],
               [5,6,9,1,3,4,7,8,2],
               [1,2,3,6,7,8,5,4,9],
               [7,4,8,5,2,9,1,6,3],
               [6,5,2,7,8,1,3,9,4],
               [9,8,1,3,4,5,2,7,6],
               [3,7,4,9,6,2,8,1,5]]

sudoku_incorrect =[[8,3,5,4,1,6,9,2,7],
                 [2,9,6,8,5,7,4,3,1],
                 [4,1,7,2,9,3,6,5,8],
                 [5,6,9,1,3,4,7,8,2],
                 [1,2,3,6,7,8,5,4,9],
                 [7,4,8,5,2,9,1,6,3],
                 [6,5,2,7,8,1,3,9,4],
                 [9,8,1,3,4,5,2,7,6],
                 [3,7,4,9,6,2,8,1,1]]

puts "Should be correct: "
puts sudoku_valid?(sudoku_correct)
puts "Should be incorrect: "
puts sudoku_valid?(sudoku_incorrect)
