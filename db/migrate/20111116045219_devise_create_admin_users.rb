class DeviseCreateAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_users do |t|
      t.timestamps
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable
      # t.encryptable
      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable
    end
    change_table :admin_users do |t|
      t.index :email,                :unique => true
      t.index :reset_password_token, :unique => true
      # t.index :confirmation_token,   :unique => true
      # t.index :unlock_token,         :unique => true
      # t.index :authentication_token, :unique => true
    end

    # Create a default user
    AdminUser.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')
  end
end