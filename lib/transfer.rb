class Transfer

  attr_accessor :sender, :receiver, :status, :transfer_amount

  def initialize(sender, receiver, status = "pending", transfer_amount)
    @sender = sender
    @receiver = receiver
    @status = status
    @transfer_amount = transfer_amount
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    if ((self.valid?) && (self.status == "pending") && (self.sender.balance >= self.transfer_amount))
      self.sender.balance -= self.transfer_amount
      self.receiver.balance += self.transfer_amount
      self.status = "complete"
    else
        self.status = "rejected"
      end
  end

end
