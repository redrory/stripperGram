# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  provider   :string
#  uid        :string
#  name       :string
#  token      :string
#  secret     :string
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  def self.find_or_create_from_auth_hash(auth_hash)
    #look up user
    user = where(provider: auth_hash.provider, uid: auth_hash.uid).first_or_create
    user.update(
      name: auth_hash.info.name,
      image: auth_hash.info.image,
      token: auth_hash.credentials.token,
      secret: auth_hash.credentials.secret,
      # followers: auth_hash.extra.raw_info.followers_count
    )
    # raise :test
    user
  end

  # def ig
  #   @client = Instagram::REST::Client.new do |config|
  #     config.consumer_key        = Rails.application.secrets.instagram_api_key
  #     config.consumer_secret     = Rails.application.secrets.instagram_api_secret
  #     config.access_token        = token
  #     config.access_token_secret = secret
  #   end
  # end

  def instagram
      @client = Instagram.configure do |config|
      config.client_id = Rails.application.secrets.instagram_api_key
      config.client_secret = Rails.application.secrets.instagram_api_secret
      config.token = token
    end
  end


end
