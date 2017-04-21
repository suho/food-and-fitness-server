class ActivesController < ApplicationController
    def index
        actives = Active.all
        render json: actives, each_serializer: ActiveSerializer, root: 'data'
    end

    def create
        active = Active.new
        active.name = params[:name]
        active.detail = params[:detail]
        if active.save 
            render json: active, status: :created, serializer: ActiveSerializer, root: 'data'
        else
            render_errors(offer)
        end
    end
end
