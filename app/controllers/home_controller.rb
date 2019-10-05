class HomeController < ApplicationController

  def index
  end

  def pay
    require 'stripe'
    Stripe.api_key = 'sk_test_492HEQS1EPIB0tiWGrRwHsZ100OANbeCkv'
    p "ok"

    charge = Stripe::Charge.create({
      amount: params[:amount],
      currency: "jpy",
      source: "tok_amex", # obtained with Stripe.js
      description: "Charge for jenny.rosen@example.com"
    }, {
      idempotency_key: "2DtUbL1FzUFj9hK3"
    })
  end
end
