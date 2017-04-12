class ActivesController < ApplicationController
    def index
    end

    def create
        @obj = Active.new
        @obj.name = params[:name]
        @obj.detail = params[:detail]
        if @obj.save 
            render json: @obj, status: :created, serializer: ActiveSerializer, root: 'data'
        else
            render_errors(offer)
        end
    end
end
