class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  attr_reader :last_transaction

  def initialize(sender, receiver, value)
    @sender = sender
    @receiver = receiver
    @value = value
    @status = "pending"
    @amount = value

   self.execute_transaction
  end

  def valid?
sender.valid? && receiver.valid? && sender.balance >= self.amount
  end #end of method

  def execute_transaction
    sender.balance -= amount
    receiver.balance += amount
    status = "complete"
  end

end
