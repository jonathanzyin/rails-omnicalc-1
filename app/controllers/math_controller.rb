class MathController < ApplicationController
  def square
    render({ :template => "math_templates/square" })
  end

  def square_result
    @number = params[:number].to_f
    @result = @number ** 2

    render({ :template => "math_templates/square_result" })
  end

  def square_root
    render({ :template => "math_templates/square_root" })
  end

  def square_root_result
    @number = params[:number].to_f
    @result = Math.sqrt(@number)

    render({ :template => "math_templates/square_root_result" })
  end

  def payment
    render({ :template => "math_templates/payment" })
  end

  def payment
    render({ :template => "math_templates/payment" })
  end

  def payment_result
    @apr = params[:apr].to_f
    @years = params[:years].to_f
    @principal = params[:principal].to_f

    monthly_rate = (@apr / 100) / 12
    months = @years * 12

    if monthly_rate == 0
      @monthly_payment = @principal / months
    else
      @monthly_payment = @principal * (monthly_rate / (1 - (1 + monthly_rate) ** -months))
    end

    @formatted_payment = @monthly_payment.to_fs(:currency)
    @formatted_apr = "%.4f%%" % @apr

    render({ :template => "math_templates/payment_result" })
  end

def random
    render({ :template => "math_templates/random" })
  end

  def random_result
    @min = params[:min].to_f
    @max = params[:max].to_f

    @random_number = rand(@min..@max)

    render({ :template => "math_templates/random_result" })
  end

def home
  render({ :template => "math_templates/home"})

  end
end
