# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mmorpg_session',
  :secret      => '14f837e6bc0201102e647bf7d04cc4d3bead1068f36f8d477e660a9e5afd4d51ee275ebc2cff9d026b25a3b552e219a99c2b5df097a4eac8a1f1cc81caeeb441'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
