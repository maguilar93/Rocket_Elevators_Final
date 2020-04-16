class InterventionsController < InheritedResources::Base
  before_action :authenticate_employee!
  

  def new
    @intervention = Intervention.new
  end

  def create
    @intervention = Intervention.new(intervention_params)


    # Create ticket on Zendesk from intervention Form
    ZendeskAPI::Ticket.create!(@client, 
    :subject => "Intervention for company id: #{@intervention.customer_id}",
    :requester => {"name": @intervention.author},
    :comment => { :value => 
      # "The contact #{@intervention.author} from company id: #{@intervention.customer_id} need an intervention building id: #{@intervention.building_id}, battery id: #{@intervention.battery_id}, column id: #{@intervention.column_id}, elevator id: #{@intervention.elevator_id}."},
      "A ticket has been opened with the following informations: 
      Building :  #{@intervention.building_id} \n 
      Battery :  #{@intervention.battery_id} \n
      Column : #{@intervention.column_id} \n
      Elevator : #{@intervention.elevator_id} \n
      Employee : #{@intervention.author} \n 
      Report :  #{@intervention.report}." },
    :type => "problem",  
    :priority => "urgent")

    #render json: @intervention #test when submit button form
    if verify_recaptcha(model: @intervention) && @intervention.save
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
