class CscmenusController < ApplicationController

def index
   
  #render plain: params[:p2].inspect
  @t=Cscmenu.all.order("dte")
  #@s=Mrktcstore.where("store=?",params[:p2])
  @s=Mrktcstore.find(params[:p1])
 
end

def show
end    

def new
end    

def create
end

def edit
end

def destroy
end    

end
