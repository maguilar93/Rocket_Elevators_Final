# app/admin/calendar.rb
ActiveAdmin.register Intervention do
    permit_params :company_name 

    index do
        selectable_column
        id_column
        column  :author
        column  :customer_id
        column  :building_id
        column  :battery_id
        column  :column_id
        column  :elevator_id
        column  :employee_id
        column  :start_date_interv
        column  :end_date_interv
        column  :result
        column  :report
        column  :status
        column  :created_at
        column  :updated_at
        actions
    end

    collection_action :published_items do
        @collection = Post.published
        column(:created_at)
        column(:author_name)
        column(:published_at)
        column(:title) { |resource| resource.truncate(100) }
      end
    
end
