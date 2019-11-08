class Transfer
  attr_accessor :account1, :account2, :value
  attr_reader :last_transaction
  def initialize(act1, act2, value)
    @account1 = act1
    @account2 = act2
    @value = value
  end


end
