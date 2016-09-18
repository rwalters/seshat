module Web
  module Routes
    extend Web::Actions

    def self.registered(app)

      # Root
      app.get "/" do
        redirect to("/calculator")
      end

      app.get  "/calculator", &show_calculator
      app.post "/calculator", &calculate_it
    end
  end
end
