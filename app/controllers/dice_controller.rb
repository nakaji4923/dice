class DiceController < ApplicationController
  def index
		@rolls = Roll.find(:all, :order => "created_at DESC, id DESC", :limit =>5)
  end

  def shake
		dice = Dice.new
		@result = dice.shake
		Roll.create :value => @result
  end

end
