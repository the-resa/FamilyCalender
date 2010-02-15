# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cal_session',
  :secret      => '707faab99c7571c9afebdb5f9780b3c4215df894ba5210a55392165bd7862f8d0b6de734e97fc9e7f46b6216aa2a459dfe58506be2344d5a46a0cb49266d9e3d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
