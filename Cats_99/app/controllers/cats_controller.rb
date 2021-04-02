class CatsController < ApplicationController

    def index
        @c = Cat.all#.includes(:name)
        render :index
    end


    def show
        @c = Cat.find(params[:id])
        render :show
    end



    private

    def cat_params
        params.require(:cat).permit(:birth_date, :color, :name, :sex, :description)
    end
end