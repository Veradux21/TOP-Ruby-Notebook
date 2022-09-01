require 'open-uri'
require 'timeout'

remote_base_url = "https://en.wikipedia.org/wiki"

start_year = 1900
end_year = 2000

retries = 3

(start_year..end_year).each do |yr|
 begin
   rpage = URI.open("#{remote_base_url}/#{yr}")
 rescue StandardError=>e
   puts "Error: #{e}"
   if retries.positive?
     puts "\tTrying #{retries} more times"
     retries -= 1
     sleep 1
     retry
  else
    puts "\t\tCan't get #{yr}, so moving on"
  end
 else
   rdata = rpage.read
 ensure
   puts 'sleeping'
   sleep 5
 end
 if rdata
   File.open("./temp/copy-of-#{yr}s.html", "w"){|f| f.write(rdata) }
 end
end

puts "wow" ; puts "amazin"  
