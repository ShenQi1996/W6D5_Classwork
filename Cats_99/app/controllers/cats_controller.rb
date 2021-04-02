class CatsController < ApplicationController

    def index
        @c = Cat.all
        render :index
    end


    def show
        @c = Cat.find(params[:id])
        render :show
    end

    def new
        @c = Cat.new
        render :new
    end


    def create
        @c = Cat.new(cat_params)

        if @c.save
            redirect_to cats_url
        else
            render json: @c.errors.full_message, status: 422
        end

    end



    private

    def cat_params
        params.require(:cat).permit(:birth_date, :color, :name, :sex, :description)
    end
end