class InterventionsController < InheritedResources::Base
  def new
    @intervention = Intervention.new
  end

  def create
    @intervention = Intervention.new(intervention_params)

    #Create ticket on Zendesk from intervention Form
    # ZendeskAPI::Ticket.create!(@client, 
    # :subject => "#{@intervention.Full_Name} from #{@intervention.Company_Name}",
    # :requester => {"name": @intervention.Email},
    # :comment => { :value => 
    #   "The contact #{@intervention.Full_Name} from company #{@intervention.Company_Name} can be reached at email #{@intervention.Email} and at phone number #{@intervention.Phone_Number}. Building type selected is #{@intervention.Building_Type} with product line #{@intervention.Product_Grade}. Number of suggested elevator is #{@intervention.Nb_Ele_Suggested} and total price is #{@intervention.Final_Price}."},
    # :type => "task",  
    # :priority => "urgent")

    #render json: @intervention #test when submit button form
    if @intervention.save
      flash[:notice] = "Add new intervention successfull "
      redirect_to :intervention
    else
      flash[:notice] = "Add new intervention not successfull "
      redirect_to action:"new"
    end
  end

  private

    def intervention_params
      params.require(:intervention).permit(:author, :customer_id, :building_id, :battery_id, :column_id, :elevator_id, :report)
    end

end
