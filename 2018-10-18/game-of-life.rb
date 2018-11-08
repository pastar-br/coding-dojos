def print_table table
  table.each do |row|
    row.each do |cell|
      print cell == 0 ? " " : "#"
    end
    puts
  end
end

def neigh row, cell
  count = 0
  _left = table[row][cell -1 ] if table[row][cell -1 ]
  _ri = table[row][cell + 1] if table[row][cell + 1]
  _top = table[row + 1][cell] if table[row + 1][cell]
  _bot = table[row -1 ][cell] if table[row - 1][cell]
  _topleft = table[row-1][cell-1] if table[row][cell -1 ]
  _botleft =  table[row+1][cell+]
  if table[row][cell-1]
end

table = Array.new(30){|e| Array.new(30)}

for row in 0..29 do
  for cell in 0..29 do
    table[row][cell] = rand 0..1
  end
end

print_table table

while(true) do
  for row in 0..29 do
    for cell in 0..29 do
      # table[row][cell]

    end
  end


  print_table table
  # IO.wait 100
end
