#Time class
puts Time.now
p Time.now.day # month year min sec hour # yday: return numeric day

p Time.new(2021,1,1,0).monday? # it not monday

p  Time.new(2021,1,1,0) < Time.now

p Time.new(2020,12).between?(Time.now,Time.new(2021,1,1,0))

p Time.now.to_a
p Time.now.ctime #string
p Time.now.strftime('%Y %B %d')

require 'time'
puts Time.parse("2021-1-1")

=begin

%Y
Year with century (e.g. 2015, 1995, etc)
%m
Month of the year, zero-padded (01..12)
%B
The full month name (e.g. January)
%b
The abbreviated month name (e.g. Jan)
%d
Day of the month, zero-padded (01..31)
%j
Day of the year (001..366) 
    
=end