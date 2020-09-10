class ChargesController < ApplicationController
  def new
  end
  def show
    costumer = Stripe::Customer.create({
      email: 'adawdwad@dwadwa.com'
    })
    createSource = Stripe::Customer.create_source(
      costumer.id,
      {
        source: {
          object: 'card',
          number: 4242424242424242,
          exp_month: 03,
          exp_year: 15
        }
      },
    )
    pp createSource
    charge = Stripe::Charge.create({
      amount: @amount,
      customer: costumer.id,
      description: 'Rails Stripe customer',
      currency: 'BRL',
    })
    rescue Stripe::CardError => e
      pp e.message
  end
  def create
    # Amount in cents
    @amount = 500
    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })
    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'BRL',
    })
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
