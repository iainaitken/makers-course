require 'socket'

server = TCPServer.new(2345)

=begin
loop do
  client = server.accept
  client.puts "Hello!"
  client.puts "Time is #{Time.now}"
  client.close
end
=end

socket = server.accept

loop do
  socket.puts "What do you say?"
  they_said = socket.gets.chomp

  if they_said == "quit"
    socket.close
  else
    socket.puts "You said: #{they_said}. Goodbye!"
  end
end
