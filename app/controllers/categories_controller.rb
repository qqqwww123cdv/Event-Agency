class CategoriesController < ApplicationController

  def create
    @category = Category.new(category_params)
    
    respond_to do |format|
      if @category.save
        format.html { redirect_to service_url(service_id), notice: "category was successfully created." }
      else
        format.html { redirect_to service_url(service_id), alert: "can't create category." }
      end
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @service = @category.service
    @category.destroy

    respond_to do |format|
      format.html { redirect_to service_url(@service), notice: "category was successfully deleted." }

    end
  end

  private

    def category_params
      params.require(:category).permit(:title, :description, :service_id, images: []).merge(user: current_user)
    end

    def service_id
      category_params[:service_id]
    end
end
