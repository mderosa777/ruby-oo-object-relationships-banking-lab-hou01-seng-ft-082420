class Transfer
  attr_accessor :sender, :receiver, :amount, :status 

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount 
    @status = "pending"
  end 

  def valid?
    (self.sender.valid?) && (self.receiver.valid?)
  end

  def execute_transaction 
    if sender.balance > amount && self.status == 
      "pending" && self.valid?
      sender.balance -= amount 
      receiver.balance += amount 
      self.status = "complete"
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
    if self.status == "complete"
      sender.balance += amount
      receiver.balance -= amount
      self.status = "reversed"
    end
  end

  
  # your code here
end
