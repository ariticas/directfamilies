class LeadsController < ApplicationController
    def new
        @lead = Lead.new
    end
    
    def show
        @lead = Lead.find(params[:id])
    end
    
    def create
        @lead = Lead.new(lead_params)
        if @lead.save
       flash.notice = "Thank you! We will be in touch shortly!"
             redirect_to contact_path
           else
             render 'new'
    end

        end
    
    private
    
    def lead_params
        params.require(:lead).permit(:name,:email,:telephone, :comment)
        end
end
