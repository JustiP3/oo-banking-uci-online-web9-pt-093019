class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  attr_reader :last_transaction

  def valid?
sender.valid? && receiver.valid? && sender.balance# >= self.amount
  end #end of method

  def execute_transaction
    if self.valid?
    sender.balance -= amount
    receiver.balance += amount
    status = "complete"
    else
    "bad transaction"
    end#end of if block
  end#end of method

  def initialize(sender, receiver, value)
    @sender = sender
    @receiver = receiver
    @value = value
    @status = "pending"
    @amount = value

  #  self.execute_transaction
  end




end #end of class
