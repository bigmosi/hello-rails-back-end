class Api::V1::GreetingsController < ApplicationController
    def index
        @greatings = Greeting.all
        if @greatings.empty?
          json_response({ msg: 'No greeting found' }, 400)
        else
            render json: @greatings[rand(0...@greatings.length - 1)]
        end
    end
end
