require 'Twitter' #gem install twitter
while true
    begin
        # Create a read write application from : 
        # https://apps.twitter.com
        # authenticate it for your account
        # fill in the following
        config = {
            consumer_key:        'ZfruTPK51bB6VrhTZAJnpn8OH',
            consumer_secret:     'bhS27kbr6lsnBgbTL6ry16V8YtElGoGHyySryxGnDGuE68cPDG',
            access_token:        '2493510627-PKugXTm43e0oKiEHpg0UE35nbG2oG4hvGCvR2lj',
            access_token_secret: 'T8qEweS296vLkz7bJByEh1ihN6sWxeulhDJO1x0WmL0u7'
        }
        rClient = Twitter::REST::Client.new config
        sClient = Twitter::Streaming::Client.new(config)

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
