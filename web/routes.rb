module Web
  module Routes
    extend Web::Actions

    def self.registered(app)

      # Root
      app.get "/" do
        redirect to("/calculator")
      end

      app.get "/calculator", &calc_show
    end
  end
end
