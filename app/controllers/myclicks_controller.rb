class MyclicksController < ApplicationController
  def index
   @myclick = Myclick.all
  end

  def new
  	@myclick = Myclick.new
  end

def save
end

  def create
  	@myclick = Myclick.new(myclick_params)
    
	if @myclick.save
         redirect_to myclick_path, notice: "The File #{@myclick.name} has been uploaded."
      else
         render "new"
      end
  end

  def destroy
  	@myclick = Myclick.find(params[:id])
  	@myclick.destroy
  	redirect_to myclick_path, notice:"My File #{@myclick.name} has been deleted."
  end

  private
      def myclick_params
      params.require(:myclick).permit(:name, :attachment, :type, :pdf, :doc)
   end
end
