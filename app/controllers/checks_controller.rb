class ChecksController < ApplicationController
  #ログインしないと閲覧以外できない
  before_action :require_user_logged_in, only: [:show, :new, :create, :edit, :update]
  
  
  def index
      @checks=Check.all
  end

  def show
    @check=Check.find(params[:id])
  end

  def new
    @check=Check.new
  end

  def create
    @check=Check.new(check_params)
                    
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
     if @check.update(check_params)
       flash[:success] = "正常に変更されました。"
     redirect_to @check
     else
     　  flash[:dangert] = "エラーが発生しました。"
     end
  end
 

  def destroy
     @check=Check.find(params[:id])
     @check.destroy
     
     flash[:success] = 'Message は正常に削除されました'
    redirect_to checks_url
     
  end
  
  private
  
  def check_params
    params.require(:check).permit(:hansaki,:syu,:cari, :des, :no, :geta, :pare, :tno, :bikou) 
  end
end