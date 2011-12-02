module TitanControl
  class User < ActiveRecord::Base
    # Include default devise modules.
    devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

    # Setup accessible (or protected) attributes for your model
    attr_accessible :email, :password, :password_confirmation, :remember_me
  end
end
