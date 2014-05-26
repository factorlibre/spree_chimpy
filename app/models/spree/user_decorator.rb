if Spree.user_class
  Spree::PermittedAttributes.user_attributes << :subscribed

  Spree.user_class.class_eval do

    after_create  :subscribe
    around_update :resubscribe
    after_destroy :unsubscribe

    delegate :subscribe, :resubscribe, :unsubscribe, to: :subscription

    private

    def subscription
      Spree::Chimpy::Subscription.new(self)
    end

  end
end
