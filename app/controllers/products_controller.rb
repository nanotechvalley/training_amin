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

  def update
    if @product.save
        flash[:notice] = "Selamat Sudah Diedit"
        redirect_to products_path
        return
    else
      flash[:error] = "Gagal Edit Brooo"
    end
  end

    
    
    def index
      @products = Product.where("price > ?", 10000)
                          .limit(5)
    end
      
    def destroy
      @product = Product.find_by_id(params[:id])

      if @product.destroy
        flash[:notice] = "Selamat Sudah Didelete"
             
      else
        flash[:error] = "Gagal Delete Brooo"

      end

      redirect_to products_path
      

    end
    
    def show
       @product = Product.find_by_id(params[:id])
    end

    private

    def find_product
    	@product = Product.find_by_id(1) 
    end

    def product_params
      params.require(:product).permit(:name, :price, :stock, :description)
    end
    
end