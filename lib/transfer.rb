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
    if self.valid? && sender.balance > amount && self.status == "pending"
    sender.balance -= amount
    receiver.balance += amount
    self.status = "complete"
  else
    self.status = "rejected"
    "Transaction rejected. Please check your account balance."
  end

  end#end of method


def reverse_transfer
  placeholder = self.receiver
  self.receiver = self.sender
  self.sender = placeholder

  if self.valid? && sender.balance > amount && self.status == "pending"
  sender.balance -= amount
  receiver.balance += amount
  self.status = "complete"
else
  self.status = "rejected"
  "Transaction rejected. Please check your account balance."
end

end




end #end of class
