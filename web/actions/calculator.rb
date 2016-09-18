module Web
  module Actions
    extend self

    def calc_show
      lambda do
        erb :calculator
      end
    end
  end
end
