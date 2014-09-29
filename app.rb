require 'cuba'
require 'mongoid'
require 'shield'
require './model/user'

ENV['RACK_ENV'] ||= "development"
Mongoid.load!("#{Dir.pwd}/config/mongoid.yml")

Cuba.define do
  on get do
    on root do
      res.write "We got routes baby"
    end

    on "login" do
      res.write "Login logic goes here"
    end
  end
end
