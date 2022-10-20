class CompaniesController < ApplicationController
	# skip_before_action :authenticate_user!
  def index
  	@company = Company.paginate(page: params[:page], per_page: 10)
  end

  def new
  	@company = Company.new	
  end

  def show
  @company = Company.find(params[:id])
  end


	def create
		@company = Company.new(name: params[:company][:name], country_id: params[:company][:country_id], state_id:  params[:company][:state_id], city_id: params[:company][:city_id], postcode:  params[:company][:postcode], start_date: params[:company][:start_date], active: params[:company][:active])
		if @company.save
			redirect_to company_path(@company)
		else
			render :new, status: :unprocessable_entity
		end
	end	

  def edit
  	@company = Company.find(params[:id])
  end
  
  def update
  	@company = Company.find(params[:id])
  	 respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to company_url(@company), notice: "company was successfully updated." }
        format.json { render :show, status: :ok, location: @company }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end



  def destroy
     @company = Company.find(params[:id])
    @company.destroy
    respond_to do |format|
      format.html{redirect_to companies_url, notice: "company was successfully destroyed."}
      format.json{head :no_content }
    end
  end

  private
    def  company_params
      params.require(:company).permit(:name, :country_id, :state_id, :city_id, :postcode, :start_date, :active)
    end
end
