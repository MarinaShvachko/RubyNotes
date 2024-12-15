#begin-rescue  is it like try catch

# Read all lines in the file
def read_file(file)
  begin
    rFile = File.open(file, "r")
    rFile.each{|line| puts line}
    rFile.close
  rescue
    raise("File not found, please make sure your fileIO name is correct")
  end
end

# Read x first characters in the provided file
def read_x_first_characters(file, num)
  rFile = File.open(file, "r")
  if rFile
    content = rFile.sysread(num)
    puts content
  else
    puts 'Can\'t open the file'
  end
end


read_file("Ruby.txt")
read_x_first_characters("Ruby.txt", 3)
