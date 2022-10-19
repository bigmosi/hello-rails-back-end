class Api::V1::MessagesController < ApplicationController
  def random
    @random_message = Message.all.sample
    render json: @random_message
  end
end
