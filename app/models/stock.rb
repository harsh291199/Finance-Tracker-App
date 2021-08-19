# frozen_string_literal: true

# Stock model
class Stock < ApplicationRecord
  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(publishable_token: Rails.application.credentials.iex_client[:cloud_api_key],
                                  endpoint: 'https://cloud.iexapis.com/v1')
    client.price(ticker_symbol) 
  end
end
