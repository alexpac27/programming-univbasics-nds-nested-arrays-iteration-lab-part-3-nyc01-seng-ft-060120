array = [
  [1,"hello",2],
  ["my",5,"friend"]
]

#p array.join(" ") #=> "1 hello 2 my 5 friend"


def join_nested_strings(array)
  string_array = []
  count = 0
  while count < array.length do

    inner_count = 0
    while inner_count < array[count].length do
      if array[count][inner_count].is_a?(String)
        string_array << array[count][inner_count]
      else
        string_array = string_array
      end
      inner_count += 1

    end
    count += 1
  end
  p string_array.join(" ")
end

join_nested_strings(array)
