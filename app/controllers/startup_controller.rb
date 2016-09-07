class StartupController < ApplicationController

def index
    @t=Mrktcstore.all.order("storedesc")
end

end
