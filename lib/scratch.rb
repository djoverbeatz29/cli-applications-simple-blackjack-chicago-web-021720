def hit
  loop do
    print "Enter 'h' to hit or 's' to stay: "
    resp = gets.chomp
    if resp == 'h'
      return true
    elsif resp == 's'
      return false
    else
      puts "Invalid response"
    end
end