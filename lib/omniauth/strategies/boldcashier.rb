require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Boldcashier < OmniAuth::Strategies::OAuth2

      option :client_options, {
          :site => 'https://cashier.boldcommerce.com'
      }

      option :setup, proc { |env|
        request = Rack::Request.new(env)
        env['omniauth.strategy'].options[:client_options][:authorize_url] = "/api/v1/#{request.GET['platform']}/#{request.GET['shop']}/oauth/authorize"
        env['omniauth.strategy'].options[:client_options][:token_url] = "/api/v1/#{request.GET['platform']}/#{request.GET['shop']}/oauth/access_token"
      }

      uid { "#{raw_info[:platform]}/#{raw_info[:shop]}" }

      def raw_info
        @raw_info ||= deep_symbolize(access_token.params)
      end

    end
  end
end
