class User < ActiveRecord::Base
  # attr_accessible :name, :oauth_expires_at, :oauth_token, :provider, :uid, :full_auth_blob

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.oauth_token = auth["credentials"]["token"]      
      user.name = auth["info"]["full_name"] || auth["info"]["name"] # for yammer prod, the name shows up in full name. maybe difference in strategy versions or something.
    end
  end

  # def self.from_omniauth(auth)
  #   where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
  #     user.provider = auth.provider
  #     user.uid = auth.uid
  #     user.name = auth.info.name
  #     user.oauth_token = auth.credentials.token
  #     user.oauth_expires_at = Time.at(auth.credentials.expires_at)
  #     user.save!
  #   end
  # end
end


