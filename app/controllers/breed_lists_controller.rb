class BreedListsController < ApplicationController
  before_action :set_breed_list, only: [:show, :update, :destroy]

  # GET /breed_lists
  def index
    @breed_lists = BreedList.all

    render json: @breed_lists
  end

  # GET /breed_lists/1
  def show
    render json: @breed_list
  end

  # POST /breed_lists
  def create
    @breed_list = BreedList.new(breed_list_params)

    if @breed_list.save
      render json: @breed_list, status: :created, location: @breed_list
    else
      render json: @breed_list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /breed_lists/1
  def update
    if @breed_list.update(breed_list_params)
      render json: @breed_list
    else
      render json: @breed_list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /breed_lists/1
  def destroy
    @breed_list.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_breed_list
      @breed_list = BreedList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def breed_list_params
      params.require(:breed_list).permit(:breed, :gender, :weight, :height)
    end
end
