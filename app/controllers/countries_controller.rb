class CountriesController < ApplicationController

    def new
    @country = Country.new
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

      @countries = Country.all
     
    end


    private
    
    def country_params
      params.require(:country).permit(:code, :name)
    end

    
    
end