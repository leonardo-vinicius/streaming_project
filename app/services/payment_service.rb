class PaymentService
  def initialize(params)
    @params = params
  end

  def call
    payment = Payment.create(@params)

    if payment.save
      return payment
    else
      raise "Erro ao criar pagamento: #{payment.errors.full_messages.join(', ')}"
    end
  end
end
