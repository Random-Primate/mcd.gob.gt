class PueblosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_pueblo, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  def index
    @pueblos = Pueblo.all.paginate(:page => params[:page], :per_page => 10)
    respond_with(@pueblos)
  end

  def show
    respond_with(@pueblo)
  end

  def new
    @pueblo = Pueblo.new
    respond_with(@pueblo)
  end

  def edit
  end

  def create
    @pueblo = Pueblo.new(pueblo_params)
    @pueblo.save
    respond_with(@pueblo)
  end

  def update
    @pueblo.update(pueblo_params)
    respond_with(@pueblo)
  end

  def destroy
    @pueblo.destroy
    respond_with(@pueblo)
  end

  private
    def set_pueblo
      @pueblo = Pueblo.find(params[:id])
    end

    def pueblo_params
      params.require(:pueblo).permit(:name)
    end
end
