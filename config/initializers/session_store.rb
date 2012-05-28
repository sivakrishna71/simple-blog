# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_simple-blog_session',
  :secret      => '7a5046f596ca94a7624710b2a601bf346ce99f8b7e95a831c64e6303421f95650f97d74395b271b51db84781dc9cd2a60571d70e61652973a26c471c1b0f56bb'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
