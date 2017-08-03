require "sinatra"
# require_relative "coin_changer.rb"

get "/" do
    # "hello dude" 
     erb :user_nam, locals: {error: ""}
end 

post '/usernam' do
    username = params[:user_nam]
    password = params[:p_word]
    error_msg = "Wrong Username or Password:"
        if username == "bootyjack1234" ; password == "bootymeat1234"
            redirect '/amount?user_nam='+ username + '&p_word='+ password 
        elsif username == "test" ; password == "test"
            redirect '/amount?user_nam='+ username + '&p_word='+ password
        else 
            erb :login, locals: {error: error_msg}
        end
end

 

 