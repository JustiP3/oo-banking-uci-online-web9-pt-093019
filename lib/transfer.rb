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
sender.balance >= self.amount && sender.valid? && receiver.valid?
  end #end of method

  def execute_transaction
    sender.balance -= amount
    receiver.balance += amount
  end

end
