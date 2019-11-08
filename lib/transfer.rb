class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  attr_reader :last_transaction

  def initialize(sender, receiver, value)
    @sender = sender
    @receiver = receiver
    @value = value
    @status = "pending"
    @amount = value

  end

  def valid?
sender.valid? && receiver.valid?
  end #end of method

  def execute_transaction
    sender.balance -= amount
    receiver.balance += amount
    status = "complete"
  end#end of method

  def evaluate
if self.valid?
  self.execute_transaction
else
  "Transaction rejected. Please check your account balance."
end

  end






end #end of class
