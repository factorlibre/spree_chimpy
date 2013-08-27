module Spree::Chimpy
  class Subscription
    delegate :configured?, :enqueue, to: Spree::Chimpy

    def initialize(model)
      @model = model
    end

    def subscribe
      defer(:subscribe) if allowed?
      true
    end

    def unsubscribe
      defer(:unsubscribe)
      true
    end

    def resubscribe(&block)
      block.call if block

      if configured?
        if unsubscribing?
          unsubscribe
        elsif subscribing?
          subscribe
        end
      end
      true
    end

    private
    def defer(event)
      enqueue(event, @model) if configured?
    end

    def allowed?
      configured? && @model.subscribed
    end

    def subscribing?
      @model.subscribed && (@model.subscribed_changed? || merge_vars_changed?)
    end

    def unsubscribing?
      !@model.subscribed && @model.subscribed_changed?
    end

    def merge_vars_changed?
      Config.merge_vars.values.any? do |attr|
        @model.send("#{attr}_changed?")
      end
    end
  end
end
