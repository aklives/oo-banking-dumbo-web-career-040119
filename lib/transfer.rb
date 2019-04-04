require 'pry'
require_relative 'bank_account.rb'

class Transfer

  attr_accessor :amount, :sender, :receiver, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending" 
  end
    
  def valid?
    if sender.valid? && receiver.valid?
      true 
    else
      false 
    end
  end 

  def execute_transaction
    if @status != "complete"
      @sender.balance -= amount
      @receiver.balance += amount
      @status = "complete"
    else
      
    end
  end
end
