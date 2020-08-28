#read
File.open('text.txt').each { |line|
    puts "#{line}"
}

#write
File.open('text.txt','a') { |file|
  file.puts "test write"
  file.write "test write"
}
#exist
p File.exist?('text.txt')
#rename 
#File.rename('text.txt','t2.txt ')
#delete
#File.delete('text.txt')


#load file intofile and excute content load'./file'' or require
require "./testRequire"
#require_relative : look in the same file