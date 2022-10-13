puts File.exist?('Ruby.txt')

aFile = File.new("Ruby.txt", "w+")
aFile.syswrite("I'm writing to fileIO")
#another way to write:
aFile.puts("\nhello")
aFile.close
