require 'Twitter'
require './config'


Thread.new do
  loop do
    begin

      rClient = Twitter::REST::Client.new $config
      sClient = Twitter::Streaming::Client.new($config)
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
