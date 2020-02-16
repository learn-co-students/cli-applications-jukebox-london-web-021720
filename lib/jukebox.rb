# Add your code here


def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  
  if input.to_i > 0 && input.to_i <= songs.length
    puts "Playing #{songs[input.to_i - 1]}"
  elsif songs.include?(input)
    song = songs.find{ |item| input == item}
    puts "Playing #{song}"
  else
    puts "Invalid input, please try again"
  end
  
end

def list(songs)
    songs.each_with_index do |song, index| 
    puts "#{index + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  
  while input != "exit" do
    if input == "play"
      play(songs)
    elsif input == "list"
      list(songs)
    elsif input == "help"
      help
    else
      puts "invalid Command "
    end
    puts "Please enter a command:"
    input = gets.strip
  end
  
  exit_jukebox
  
end