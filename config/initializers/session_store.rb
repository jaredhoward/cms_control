# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_httpdocs_session',
  :secret      => '0a4a3dd184fd901dd8c1d32421e59da5522c0c2fa7cfc8c870f7727de549ce718765ef86e8b4e16c692fe27b5a1e33e7b3531a5bdf2a43a903fe6b97e13cd4e0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
