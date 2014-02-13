class CountriesController < ApplicationController

    def new
    @countries = Country.new
    end
  
    def create
   
    @country = Country.new(country_params)

    if @country.save
      flash[:notice] = "Selamat Sudah Disimpan"
      redirect_to countries_path
      return

    else
      flash[:error] = "Gagal Brooo"
    end

    render :new
    
    
    end 
    
    def edit
      
    end
    
    def index

      @countries = Country.where("country LIKE '%Serikat%'")
     
    end

    def destroy
      @country = Country.find_by_id(params[:id])

      if @country.destroy
        flash[:notice] = "Selamat Sudah Didelete"
             
      else
        flash[:error] = "Gagal Delete Brooo"

      end

      redirect_to country_path

    end


    private
    
    def country_params
      params.require(:country).permit(:code, :name)
    end

    
    
end