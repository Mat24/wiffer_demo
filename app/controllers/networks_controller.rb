class NetworksController < ApplicationController
  def index
    @networks = Network.all
  end

  def new
    @network = Network.new
  end

  def create
    @network = Network.create(network_params)
    if @network.save
      respond_to redirect_to @network, notice: "Red registrada correctamente"
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  def network_params
    params.require(:network).permit(:essid)
  end
end
