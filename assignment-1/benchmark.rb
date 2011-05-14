#!/usr/bin/ruby

# Time a command, return the ellapsed time in seconds
def time(command)
  start = Time.now
  system(command)
  Time.now - start
end

# Write a benchmark result to the correct file
def benchmark_result(command, input, value)
  File.open("#{command}.csv", 'a') do |f|
    f.write "#{input},#{value}\n"
  end
end

# Execute a benchmark a few times, and write the result
def benchmark(command, input, input_repeat)
    total = 0
    input_repeat.times do
      total += time("./#{command} #{input} >/dev/null")
    end

    benchmark_result(command, input, total / input_repeat)
end

# Main function
def main
  if ARGV.size < 3 then
    puts "Usage: #{$0} command start end [increase] [repeat]"
    exit 1
  end

  command = ARGV[0]
  input_start = ARGV[1].to_i
  input_end = ARGV[2].to_i
  input_increase = (ARGV[3] || 10).to_i
  input_repeat = (ARGV[4] || 10).to_i

  input = input_start
  while input < input_end
    benchmark command, input, input_repeat
    input += input_increase
  end
end

main
