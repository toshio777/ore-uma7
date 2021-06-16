module Api
  module V1 
    class HorsesController < ApplicationController 
      


      def index
        horses = Horse.order(power: :asc)
        render json: { data: "TestData" }
      end


      
      def show
       # @horse = Horse.order("RANDOM()").limit(8)
        render json: { test: 'Success', message: 'Test'} 
      end


      
      def create
        horse = Horse.new(horse_params)
        if horse.save
          render json: { status: "SUCCESS", data: horse }
        else
          render json: { status: "ERROR", data: horse.errors }
        end 
      end
      
      def destroy 
        @horse.destroy 
        render json: { status: "SUCCESS", message: "Deleted the horse", data: @horse }
      end

      def update 
        if @horse.update(horse_params)
          render json: { status: "SUCCESS", message: "Updated the post", data: @horse }
        else
          render json: { status: "SUCCESS", message: "Not updated", data: @horse.errors }
        end
      end


      private

      

      def horse_params
        params.require(:horse).permit(:title)
      end


    end
  end
end




