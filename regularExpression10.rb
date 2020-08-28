#Regexp class
string = "ruby on rails22-345"
p string.start_with?("ru")
p string.end_with?("ls")

# string.each_char {|name|
#     puts name
# }
# string.chars {|name|
#     puts name
# }

######### regular expresssion created with forward slashes 

# string =~ // (return index positio of first pattern)
p string =~ /by/
matrix = [[1,2],[1,2]]

#any single digit 2
p string.scan(/\d/)
#one or more 22
p string.scan(/\d+/) 
string.scan(/\d+/) {|number_match| puts number_match.length}
#end with 2
p string.scan(/.2/)  
#start with 2
p string.scan(/2./)  
p string.scan(/\d./)  
#between
p string.scan(/r.b/)  
# opposite of \d is \D (no digits)
p string.scan(/\D/) 
#any space char
p string.scan(/\s/) 
#any no space 
p string.scan(/\S/) 

#Anchors
# all matches start (begin) with number
p string.scan(/\A\d/) 
# all matches end with number
p string.scan(/\d+\z/) 

#exclude  e f space
p string.scan(/[^ef\s]/) 

#replace first occurence m by t (temprary change)
p string.sub("r","t")
# final change
p string.sub!("r","t")
#replace all
p string.gsub("r","t")

#replca all pattern by ""
phone = "(33)-(221)"
p phone.gsub(/[-\s\(\)]/,"")

#rubular.com




