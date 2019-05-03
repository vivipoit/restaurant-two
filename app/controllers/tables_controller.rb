class TablesController < ApplicationController
    
    def index
    end
    
    def new
        @table = Table.new
    end
    
    def create
        @table = Table.create(table_params)
        
        redirect_to table_path(@table), notice: 'Table was successfully created.'
    end
    
    def show
        @table = Table.find(params[:id])
    end
    
    private
    
    def table_params
        params.require(:table).permit(:number, :location, :note)
    end
    
end