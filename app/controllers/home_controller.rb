class HomeController < ApplicationController
  def index
    @calculation = Calculation.new
  end

  def calculate
    @calculation = Calculation.new(calculate_params)

    if @calculation.valid?
      @result = @calculation.calculate
    else
      @result = 'Invalid input'
    end

    render :index
  end

  private

  def calculate_params
    # qho calculation
    params.require(:calculation).permit(:mass, :omega, :position, :energy)
  end
end
