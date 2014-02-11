class ProductsController < ApplicationController


  def new
    @product = Product.new 
  end
  
  def create
    @product = Product.new(product_params)

    if @product.save
      flash[:notice] = "Selamat Sudah Disimpan"
      redirect_to products_path
      return

    else
      flash[:error] = "Gagal Brooo"
    end

    render :new
    
  end 
    
    def edit
      
    end
    
    def index
      @products = Product.all 
      
    end

    private

    def find_product
    	@product = Product.find_by_id(1) rescue nil
    end

    def product_params
      params.require(:product).permit(:name, :price, :stock, :description)
    end



end