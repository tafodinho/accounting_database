class WebhooksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def stripe
    payload = request.body.read
    event = nil

    begin
      event = Stripe::Event.construct_from(JSON.parse(payload, symbolize_names: true))
    rescue JSON::ParserError => e
      status 400
      return
    end

    case event.type
    when 'customer.subscription.updated'
      subscription = event.data.object
      user_subscription = Subscription.find_by(stripe_id: subscription.id)
      user_subscription.update(status: subscription.status)
    end

    render json: { message: 'success' }
  end
end
