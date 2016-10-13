class SysmaintliController < ApplicationController

def create
  #render html: params[:menuli].inspect
  @t=Cscmenuli.new
    @t.mcode=params[:menuli][:mcode]
    @t.dte=params[:menuli][:dte]
    @t.category=params[:menuli][:category]
    @t.item=params[:menuli][:item]
    @t.itemdesc=params[:menuli][:itemdesc]
  @t.save
  
  redirect_to url_for(:controller => :sysmaintli, :action => :show,
                      id: 0, p1: params[:menuli][:mcode], p2: params[:menuli][:dte] )
end


def show
  #params p1, p2, p3 are passed to view
  
  begin
    @norec=0
    @t=Cscmenuli.where("mcode = ? and dte = ?", params[:p1],params[:p2]).order("category","itemdesc")
    rescue ActiveRecord::RecordNotFound
    @norec=1
  end

  if @norec==1
    redirect_to url_for(:controller => :sysmaintli, :action => :new,
                        p1: params[:p1], p2: params[:p2], p3: params[:p3] )
  else
    #pass to show.html
  end
  
end

def new
end

def edit
  #all params set by show.html and passed to edit.html
end

def update

#validate data

  
@t=Cscmenuli.find(params[:editli][:id])
  @t.item=params[:editli][:item]
  @t.itemdesc=params[:editli][:itemdesc]
  @t.category=params[:editli][:category]
  @t.save

redirect_to url_for(:controller => :sysmaintli, :action => :show,
                        p1: params[:editli][:mcode], p2: params[:editli][:dte])

  
end




   
end
