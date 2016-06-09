class ClientsController < ApplicationController

  def index
    @clients = Client.paginate(page: params[:page], per_page: 5)
  end

  def show
    @client = Client.find(params[:id])
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      flash.now[:notice] = "#{@client.name.capitalize} has been created!"
    else
      flash.now[:warning] = "No client has been created!"
    end
    render 'new'
  end

  def destroy
    client = Client.find(params[:id])
    client.destroy
    flash.now[:notice] = "#{client.name} was removed."
  end

  def new
    @client = Client.new
  end

  private
    def client_params
      params.require(:client).permit(:name, :email)
    end
end
