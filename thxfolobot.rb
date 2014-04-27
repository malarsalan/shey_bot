#!/usr/bin/env ruby
require 'Twitter'
# Create a read write application from : 
# https://apps.twitter.com
# authenticate it for your account
# fill in the following
config = {consumer_key:        'ZfruTPK51bB6VrhTZAJnpn8OH',  consumer_secret:     'bhS27kbr6lsnBgbTL6ry16V8YtElGoGHyySryxGnDGuE68cP',
          access_token:        '2493510627-S69keaq5WUlneuJLqW0BoZqy0Fe6Tmjgtw8Ht',  access_token_secret: '3yMCHfsR9mofQCULUDGnxaErj3gvLXVzSlvZSDxuMMysg'}
me = 'shey_bot' # to prevent DM yourself

Thread.new do
  loop do
    begin

      rClient = Twitter::REST::Client.new config
      sClient = Twitter::Streaming::Client.new(config)
      sClient.user do |object|
        if object.is_a? Twitter::Streaming::Event and object.name==:follow
          user = object.source
          if user.name != me
            rClient.create_direct_message user, "Thanks for following me #{user.name} :)"
            puts "New follower : #{object.source.name}"
          end
        end
      end
      
        config.respond_to_phrase "hey @tweetbot" do |responses|
        responses << "Hey back at ya" << "Pretty cool, thanks for saying hello"
      end

    rescue
      puts 'error occurred, sleeping for 5 seconds'
      sleep 5
    end
  end
end
