#begin-rescue  is it like try catch

def read_file(file)
  begin
    rFile = File.open(file, "r")
    rFile.each{|line| puts line}
    rFile.close
  rescue
    raise("File not found, please make sure your fileIO name is correct")
  end
end

read_file("Ruby.txt")




