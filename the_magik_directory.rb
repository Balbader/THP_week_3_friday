date = Time.now.strftime("%m\.%d")
Dir.mkdir("/Users/basilalbader/dev/the_hacking_project/projet_commun/week_3/THP_week_3_friday/#{date}\:Project_Ruby")
Dir.mkdir("/Users/basilalbader/dev/the_hacking_project/projet_commun/week_3/THP_week_3_friday/#{date}\:Project_Ruby/lib")
file = File.open("/Users/basilalbader/dev/the_hacking_project/projet_commun/week_3/THP_week_3_friday/#{date}\:Project_Ruby/Gemfile", "a+")
info = file.puts("source 'https://rubygems.org'")
input = ARGV
system("gem install bundler")
i = 0
while i < input.length
  file.puts("gem '#{input[i]}'")
  i += 1
end 
system("bundle install")
system("/Users/basilalbader/dev/the_hacking_project/projet_commun/week_3/THP_week_3_friday/#{date}\:Project_Ruby/rspec --init")
file.close
