def revrot(str, sz)
  # your code
  return '' if sz == 0
  result = ''
  str.scan(/.{#{sz}}/) do |chunk|
    cubeSum = chunk.each_char.reduce(0) do |memo, char|
      memo += char.to_i**3
    end
    chunk = cubeSum.even? ? chunk.reverse : chunk.slice(1..-1) + chunk[0]
    result += chunk
  end
  result
end

p revrot("733049910872815764", 5)