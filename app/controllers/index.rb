require 'excon'

get '/' do
  erb :index
end

post '/' do
  # text = "I"
# Request the profile

url = "https://gateway.watsonplatform.net/tone-analyzer/api/v3/tone?version=2016-05-19&text=#{params['analyze']}"
  response = Excon.get(url,
      :user     => '8ae00329-ba0f-4df4-8d49-b5b729b46aa9',
      :password => 'Qr0BUGTVK2jU')
  puts response.body
  @user_response = JSON.parse(response.body)
  @tones = JSON.parse(response.body)['document_tone']['tone_categories'].first['tones']
  @tones_2 = JSON.parse(response.body)['document_tone']['tone_categories'].second['tones']
  @tones_3 = JSON.parse(response.body)['document_tone']['tone_categories'].third['tones']
  erb :'analyze/index'
end


