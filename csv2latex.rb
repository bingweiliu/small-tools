#!/usr/bin/ruby
if ARGV.length > 1 then
  spec="|"
  for i in 1..(ARGV.length-1)
    spec = spec + ARGV[i]+"|"
  end
end

puts "\\begin{table}
  \\centering
  \\begin{tabular}{"+spec+"}
  \\hline"

File.open(ARGV.first).each do |line|
  puts "    "+line.chomp!.gsub(',',' & ') << "\\"*2+" \\hline";
end
  puts "  \\end{tabular}
  \\caption{}
  \\label{}
\\end{table}"
