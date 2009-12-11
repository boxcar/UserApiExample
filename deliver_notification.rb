#!/usr/bin/env ruby
require 'rubygems'
require 'httparty'

SETTINGS = { :username => 'XXXREPLACE@MEXXX', :password => 'XXX' }

NOTIFICATION_URL = 'https://boxcar.io/notifications'

notification_params = { :notification => { :from_screen_name => 'Example', :message => 'This is an example notification' } }
resp = HTTParty.post(NOTIFICATION_URL, :body => notification_params, :basic_auth => SETTINGS)
puts resp
