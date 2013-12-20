configure :development do 
  # establishes our connection to the DB and other settings
  ActiveRecord::Base.establish_connection(
      :adapter => "postgresql",
      :host => "localhost",
      :username => "Wright",
      :database => "simple_blog2",
      :encoding => "utf8"
    )
end

configure :production do
  # HEROKU CONFIG 
  db = URI.parse(ENV['HEROKU_POSTGRESQL_ORANGE_URL'])
  #configuration info
  ActiveRecord::Base.establish_connection(
      :adapter => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
      :host     => 'ec2-54-204-45-126.compute-1.amazonaws.com'
      :username => 'khljfdxdwrzipg'
      :password => 'W0eTdv3EqYrBXNB_NjXmGn0Tx3'
      :database => 'da1dqis9usm2ja'
      :encoding => 'utf8'
      :port => '5432'
  )
end