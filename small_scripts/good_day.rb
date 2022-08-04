require 'net/http'
require 'uri'

uri = URI("https://wttr.in/London?format=3")
response = Net::HTTP.get(uri)

# response.code
# response.body

date = Time.now.strftime("Today is %a %Y/%m/%d")

puts date
puts response