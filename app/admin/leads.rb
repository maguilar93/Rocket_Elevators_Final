ActiveAdmin.register Lead do
    index do
        selectable_column
        id_column
        column  :full_name
        column  :company_name
        column  :email
        column  :phone
        column  :project_name
        column  :project_desc
        column  :department
        column  :message
        column  :attached_file do |ad|
        image_tag rails_blob_path(ad.attached_file, disposition: 'attachment') if ad.attached_file.attached?
        end
        column  :timestamp
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
  