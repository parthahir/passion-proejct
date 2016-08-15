require 'excon'
# get user input from view, get that input and set it to a variable, it will be a param
# format it to to whatever to be in



# # # Set default headers
 text     = 'FUCK YOU'
# Request the profile
response = Excon.get("https://gateway.watsonplatform.net/tone-analyzer/api/v3/tone?version=2016-05-19&text=#{text}",
                    :user     => '8ae00329-ba0f-4df4-8d49-b5b729b46aa9',
                    :password => 'Qr0BUGTVK2jU')
puts "https://gateway.watsonplatform.net/tone-analyzer/api/v3/tone?version=2016-05-19&text=#{text}"
puts response.body






# require 'excon'


#   # Send a profile request to Personality
#   # Insights service
#   # def profile(data, headers)
#   # #   # Set default headers
#   headers = {}
#     headers[:contentType    ] ||= "text/plain;charset=UTF-8"
#     headers[:contentLanguage] ||= "en"
#     headers[:acceptLanguage ] ||= "en"

#     # Request the profile
#     response = Excon.post('https://gateway.watsonplatform.net/tone-analyzer/api/v3/tone?version=2016-05-19',
#                         :body     => "Hello whats up",
#                         :headers  => {
#                           "Content-Type"     => headers[:contentType],
#                           "Content-Language" => headers[:contentLanguage],
#                           "Accept-Language"  => headers[:acceptLanguage]
#                         },
#                         :user     => '8ae00329-ba0f-4df4-8d49-b5b729b46aa9',
#                         :password => 'Qr0BUGTVK2jU')

#     puts response.body


# curl -u "8ae00329-ba0f-4df4-8d49-b5b729b46aa9":"Qr0BUGTVK2jU" -H "Content-Type: application/json" -d "{\"text\": \"A word is dead when it is said, some say. Emily Dickinson\"}" "https://gateway.watsonplatform.net/tone-analyzer/api/v3/tone?version=2016-05-19"

# require 'net/http'
# require 'rubygems'
# require 'json'
# require 'uri'

# url = "https://gateway.watsonplatform.net/tone-analyzer/api/v3/tone?version=2016-05-19"
# uri = URI.parse(url)
# data = [{"" => ""}]

# http = Net::HTTP.new(uri.host,uri.port)

# response = http.get(uri.path,data.to_json,headers)
#     puts response.code
#     puts response.body
