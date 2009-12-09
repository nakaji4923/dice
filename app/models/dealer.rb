class Dealer
	def initialize
		@d1 = 1
		@d2 = 1
		@d_sum = 2
	end

	def chouhan(expected)
		# :loose
		# :win
		
		if (expected == "丁") && (@d_sum.even?)
			:win
		elsif (expected == "半") && (@d_sum.odd?)
			:win
		else
			:loose
		end
	end

	def sum
		@d1 = Dice.new.shake
		@d2 = Dice.new.shake

		@d_sum = @d1 + @d2
	end

	def get_d1
		@d1
	end

	def get_d2
		@d2
	end

	def get_sum
		@d_sum
	end

end

