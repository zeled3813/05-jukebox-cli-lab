#! 

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]
def help 
  puts "
I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |name, i|
    puts "#{i+1}. #{name}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  if songs.include?(user_input)
    puts "Playing #{user_input}"
  elsif songs.length >= user_input.to_i && user_input.to_i > 0
    puts "Playing #{songs[user_input.to_i-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  loop do 
    puts "Please enter a command:"
    user_response = gets.chomp
    if user_response.downcase == "help"
      help
    elsif user_response.downcase == "list"
      list(songs)
    elsif user_response.downcase == "play"
      play(songs)
    elsif user_response.downcase == "exit"
      exit_jukebox
      break
    end
  end
end
