# config/initializers/swagger-docs.rb
Swagger::Docs::Config.register_apis({
  "1.0" => {
    :api_file_path => "public/",
    :base_path => "http://localhost:3000",
    :clean_directory => true,
    :base_api_controller => ActionController,
    :attributes => {
      :info => {
        "title" => "Party Sharing",
        "description" => "App used to share your parties with friends"
      }
    }
  }
})