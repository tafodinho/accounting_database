class SubscriptionsController < ApplicationController
  def new
    @subscription = Subscription.new
  end

  def create
    @subscription = current_user.subscriptions.build(subscription_params)

    if @subscription.save
      create_stripe_subscription(@subscription)
      redirect_to root_path, notice: 'Subscription created successfully.'
    else
      render :new
    end
  end

  private

  def subscription_params
    params.require(:subscription).permit(:plan_type, :price, :duration)
  end

  def create_stripe_subscription(subscription)
    # Stripe logic to create a subscription
    customer = Stripe::Customer.create({
      email: current_user.email,
      source: params[:stripeToken],
    })

    stripe_subscription = Stripe::Subscription.create({
      customer: customer.id,
      items: [{ plan: subscription.plan_type }],
    })

    # Update subscription with Stripe details
    subscription.update(stripe_id: stripe_subscription.id, status: 'active')
  rescue Stripe::StripeError => e
    subscription.update(status: 'failed')
    flash[:error] = e.message
    redirect_to new_subscription_path
  end
end
