require 'pusher'

Pusher.logger = Rails.logger
Pusher.key = "765ec374ae0a69f4ce44"
Pusher.app_id = "wqew"
Pusher.secret = "wuguanghai"
Pusher.host = '127.0.0.1'
Pusher.port = 4567

class HomeController < ApplicationController
  def hello_world
    Pusher["my-channel"].trigger "hello_world", {:message => 'hello world'}
    render json: { success: true }
  end
end
