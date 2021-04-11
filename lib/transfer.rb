class Transfer

  attr_accessor :sender, :receiver, :status

  def initialize(sender, receiver, status = "pending")
    @sender = sender
  end

end
