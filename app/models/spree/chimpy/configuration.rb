module Spree
  class Chimpy::Configuration < Preferences::Configuration
    preference :store_id,              :string,  default: 'spree'
    preference :key,                   :string
    preference :list_name,             :string,  default: 'Members'
    preference :customer_segment_name, :string,  default: 'Customers'
    preference :merge_vars,            :hash,    default: { 'EMAIL' => :email }
    preference :api_options,           :hash,    default: { timeout: 60 }
    preference :double_opt_in,         :boolean, default: false
  end
end
