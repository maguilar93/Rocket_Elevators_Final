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
      redirect_to action:"new"
    else
      flash[:notice] = "Add new intervention not successfull "
      redirect_to action:"new"
    end
  end
  
  # if params[:customer_id].present?
  #   @tasks = Project.find(params[:customer_id]).tasks
  # else
  #     @tasks = Task.all
  # end
  # if request.xhr?
  #     respond_to do |format|
  #         format.json {
  #             render json: {tasks: @tasks}
  #         }
  #     end
  # end

  def get_buildings
    customer_id = params[:customer_id]
    buildings = Building.where(customer_id: customer_id)
    render json: buildings
  end

  def get_batteries
    building_id = params[:building_id]
    batteries = Battery.where(building_id: building_id)
    render json: batteries
  end

  def get_columns
    battery_id = params[:battery_id]
    columns = Column.where(battery_id: battery_id)
    render json: columns
  end

  def get_elevators
    column_id = params[:column_id]
    elevators = Elevator.where(column_id: column_id)
    render json: elevators
  end

  private

    def intervention_params
      params.require(:intervention).permit(:author, :customer_id, :building_id, :battery_id, :column_id, :elevator_id, :report)
    end

end
