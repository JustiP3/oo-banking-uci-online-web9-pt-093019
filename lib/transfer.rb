class Transfer
  attr_accessor :sender, :receiver, :value, :status
  attr_reader :last_transaction

  def initialize(sender, receiver, value)
    @sender = sender
    @receiver = receiver
    @value = value
    @status = pending 
  end

end
