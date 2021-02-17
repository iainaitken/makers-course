require 'socket'
require_relative 'notelist.rb'

server = TCPServer.new(2345)
socket = server.accept

notelist = NoteList.new

loop do
  socket.puts "What do you want to do?\n1. Add an entry\n2.View your notes\n3.Quit"
  selection = socket.gets.chomp
  case selection
    when "1"
      socket.puts "Please enter a title"
      title = socket.gets.chomp
      socket.puts "Please write your note"
      body = socket.gets.chomp
      socket.puts "Thank you"
      notelist.add(title, body)
    when "2"
      list = notelist.view
      socket.puts list
    when "3"
      socket.close
    else
      socket.puts "Please try again"
  end
end
