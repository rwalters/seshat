module Web
  module Routes
    extend Web::Actions

    def self.registered(app)

      # Root
      app.get "/" do
        redirect to("/calculator")
      end

      app.get "/missions",           &mission_index
    end
  end
end
