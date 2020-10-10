class ChecksController < ApplicationController
  def index
      @checks=Check.all
      
  end

  def show
    @check=Check.find(params[:id])
  end

  def new
    @check=Check.new(check_params)
  end

  def create
    @check=Check.new
                    
    if @check.save
      flash[:success] = "正常に登録されました。"
      redirect_to @check
     else
      flash[:denger] = "登録されませんでした。"
    end
  end

  def edit
    @check=Check.find(params[:id])
    
    
  end

  def update
     @check=Check.find(params[:id])
     
  　  @check.update(check.params)
   　
  end
 

  def destroy
     @check=Check.find(params[:id])
     @check.destroy
     
     flash[:success] = 'Message は正常に削除されました'
    redirect_to checks_url
     
  end
  
  private
  
  def check_params
    params.require(:check).permit(:syu,:cari, :des, :no, :geta, :pare, :tno, :bikou) 
  end
end

