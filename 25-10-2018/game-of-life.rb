def print_table table
  table.each do |row|
    row.each do |cell|
      print cell == 0 ? " " : "#"
    end
    puts
  end
end

def neigh table, row, cell
  count = 0
  _left =  (cell > 0) ? table[row][cell -1 ] : 0
  _ri =  (cell < 49) ? table[row][cell + 1] : 0
  _top =  (row < 49) ? table[row + 1][cell] : 0
  _bot =  (row > 0) ? table[row -1 ][cell] : 0
  _topleft =  (row > 0 and cell > 0) ? table[row-1][cell-1] : 0
  _botleft =  (row < 49 and cell > 0) ?  table[row+1][cell-1] : 0
  _top_right =  (row > 0 and cell < 49) ? table[row-1][cell+1] : 0
  _bot_right =  (row < 49 and cell < 49) ? table[row+1][cell+1] : 0

  return _left + _ri + _top + _bot + _topleft + _botleft + _top_right + _bot_right
end

table = Array.new(50){|e| Array.new(50)}

for row in 0..49 do
  for cell in 0..49 do
    table[row][cell] = rand 0..1
  end
end

print_table table

while(true) do
  table2 = Array.new(50){|e| Array.new(50)}

  for row in 0..49 do
    for cell in 0..49 do
      n = neigh(table, row, cell)

      if n < 2
        table2[row][cell] = 0
      elsif n > 3
        table2[row][cell] = 0
      elsif table[row][cell] == 0 and n == 3
        table2[row][cell] = 1
      elsif (n == 2 or n == 3) and table[row][cell] == 1
        table2[row][cell] = table[row][cell]
      else
        table2[row][cell] = 0
      end
    end
  end

  table = table2
  print_table table
  puts
  puts
  puts
  puts
  puts
  puts
  puts
  puts
  sleep 0.1
end
