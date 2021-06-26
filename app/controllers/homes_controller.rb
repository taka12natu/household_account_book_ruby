class HomesController < ApplicationController
    def top
    end

    def index
        @homes = Home.all
    end

    def new
        @home = Home.new
    end

    def show
        @home = Home.find(params[:id])
    end

    def create
        Home.create(home_parameter)
        redirect_to homes_path
    end

    def destroy
        @home = Home.find(params[:id])
        @home.destroy
        redirect_to homes_path, notice:"削除しました"
    end
    
      def edit
        @home = Home.find(params[:id])
      end
    
      def update
        @home = Home.find(params[:id])
        if @home.update(home_parameter)
          redirect_to homes_path, notice: "編集しました"
        else
          render 'edit'
        end
      end
    
      private
    
      def home_parameter
        params.require(:home).permit(:title, :content, :start_time)
      end
end
