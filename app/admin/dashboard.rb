ActiveAdmin.register_page "Dashboard" do
  content do
     button_to "Press for a summary",  welcome_path , method: :get
  end
end
