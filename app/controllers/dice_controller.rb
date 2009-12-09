class DiceController < ApplicationController
  def index
		@rolls = Roll.find(:all, :order => "created_at DESC, id DESC", :limit =>5)
  end

  def shake
		dice = Dice.new
		@result = dice.shake
		Roll.create :value => @result
  end

	def report
		@count = Roll.count
		@statistics = Roll.count(:group => :value)
	end

	def gamble
		if request.post?
			# @result = :win
			dealer = Dealer.new
			dealer.sum
			@input = params[:expected]
			@d1 = dealer.get_d1
			@d2 = dealer.get_d2
			@sum = dealer.get_sum
			@result = dealer.chouhan(params[:expected])
		end
	end
end
