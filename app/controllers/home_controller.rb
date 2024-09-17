class HomeController < ApplicationController
  def index
    @scz = Scz.new
    @qho = Qho.new
  end

  def calculate_qho
    @qho = Qho.new(qho_params)

    if @qho.valid?
      @result = @qho.calculate
    else
      @result = 'Invalid input'
    end

    render :index
  end

  def calculate_scz
    @scz = Scz.new(scz_params)

    if @scz.valid?
      @result = @scz.calculate
    else
      @result = 'Invalid input'
    end

    render :index
  end

  private

  def qho_params
    params.require(:qho).permit(:mass, :omega, :position, :energy)
  end

  def scz_params
    params.require(:scz).permit(:mass)
  end
end
