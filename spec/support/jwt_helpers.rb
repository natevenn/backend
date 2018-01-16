module JwtHelpers
  def generate_token(user)
    exp = Time.now.to_i + 4 + 3600
    JsonWebToken.encode({access_token: user.access_token, exp: exp})
  end

  def generate_expired_token(user)
    exp = Time.now.to_i - 4 * 3600
    JsonWebToken.encode({access_token: user.access_token, exp: exp})
  end
end
