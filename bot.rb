require 'Twitter' #gem install twitter
require './config'
while true
    begin
    	sClient = Twitter::Streaming::Client.new($config)
        topics = ['#bored', '#boring', '#shey_bot']
        sClient.filter(:track => topics.join(',')) do |tweet|
            if tweet.is_a?(Twitter::Tweet)
        puts tweet.text # shows the tweet in the command line terminal
   end
end
end
end
