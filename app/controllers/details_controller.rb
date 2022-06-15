class DetailsController < ApplicationController
    def index

    end

    def show
      @detail = Detail.find(params[:id])
    end
  end
