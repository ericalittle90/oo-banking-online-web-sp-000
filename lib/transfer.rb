class Transfer

  attr_accessor :sender, :receiver, :bank_account

  def initialize(sender, receiver)
    @sender = sender
    @receiver = receiver
  end

end
