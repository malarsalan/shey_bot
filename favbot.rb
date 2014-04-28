require 'Twitter' #gem install twitter
require './config'
while true
    begin

        rClient = Twitter::REST::Client.new $config
        sClient = Twitter::Streaming::Client.new($config)

        # topics to watch
        topics = ['#bored', '#phonegap']
        sClient.filter(:track => topics.join(',')) do |tweet|
            if tweet.is_a?(Twitter::Tweet)
              puts tweet.text 
              rClient.fav tweet
            end
        end
    rescue
        puts 'error occurred, waiting for 5 seconds'
        sleep 5
    end

end
