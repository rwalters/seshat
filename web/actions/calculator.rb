module Web
  module Actions
    extend self

    def show_calculator
      lambda do
        erb :calculator
      end
    end

    def calculate_it
      lambda do
        calc = Calculator.new

        @first_number  = params[:operand1].to_f
        @second_number = params[:operand2].to_f
        @operator      = params[:operator]

        case @operator
        when '+'
          @result = calc.add(@first_number, @second_number)
        when '-'
          @result = calc.subtract(@first_number, @second_number)
        when '*'
          @result = calc.multiply(@first_number, @second_number)
        when '/'
          @result = calc.divide(@first_number, @second_number)
        end
        erb :calculator
      end
    end
  end
end
