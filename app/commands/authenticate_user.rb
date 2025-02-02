class AuthenticateUser
  prepend SimpleCommand

  def initialize(username, password)
    @username = username
    @password = password
  end

  def call
    JsonWebToken.encode(user_id: user.id) if user
  end

  private

  attr_accessor :username, :password

  def user
    user = User.find_by_username(username)
    return user if user && user.authenticate(password)

    errors.add :error, 'invalid credentials'
    nil
  end
end