class SpicesController < ApplicationController
    
    def index
        spices = Spice.all
        render json: spices
    end

    def create
        create_spice = Spice.create(spice_params)
        
        # (title: params[:title], image: params[:image], description: params[:description], notes: params[:notes], rating: params[:rating])

        render json: create_spice, status: :created
    end

    def update
        spice = Spice.find_by(params[:id])
        spice.update(spice_params)
        
        # (title: params[:title], image: params[:image], description: params[:description], notes: params[:notes], rating: params[:rating])

        render json: spice, status: :accepted
    end    

    def destroy
        spice = Spice.find_by(params[:id])
        spice.destroy
    end

    private

    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end
end
