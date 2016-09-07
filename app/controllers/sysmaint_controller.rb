class SysmaintController < ApplicationController

def index
end

def new
  @t=Cscmenu.all.order("dte")
end    

def create
  #@t = Cscmenumodel.new(cscmenu_params)
  @t = Cscmenu.new
  @t.mcode = params[:menu][:mcode]
  @t.dte= params[:menu][:dte]
  @t.sts= params[:menu][:sts]
  @t.save
  redirect_to url_for(:controller => :sysmaint, :action => :new)
end

def edit
    render html: "edit"
end

def destroy
  @t=Cscmenu.find(params[:id])
  @t.destroy
  redirect_to url_for(:controller => :sysmaint, :action => :new)
end    

def show
end  


private
  def cscmenu_params
    params.require(:menu).permit(:mcode,:dte,:sts)
  end

end
