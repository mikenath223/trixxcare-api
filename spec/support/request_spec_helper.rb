module RequestSpecHelper
  # Parse JSON response to ruby hash
  def json
    JSON.parse(response.body)
  end

  module AuthHelpers
    def auth_headers(user)
      token = Knock::AuthToken.new(payload: { sub: user.id }).token
      {
        'Authorization': "Bearer #{token}"
      }
    end
  end
end
