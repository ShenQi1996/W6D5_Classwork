class CatsController < ApplicationController

    def index
        c = Cat.all
        render json: c
    end


end