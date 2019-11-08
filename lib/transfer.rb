class Transfer
  attr_accessor :sender, :receiver, :value
  attr_reader :last_transaction

  def initialize(sender, receiver, value)
    @sender = sender
    @receiver = receiver
    @value = value
  end

end
