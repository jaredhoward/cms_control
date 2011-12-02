class Admin::PasswordsController < Devise::PasswordsController
  layout 'logged_out'
end
