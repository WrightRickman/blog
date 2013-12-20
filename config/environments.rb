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
ActiveRecord::Base.establish_connection(
    adapter: "postgresql",
    host: "ec2-54-204-45-126.compute-1.amazonaws.com",
    username: "khljfdxdwrzipg",
    password: "W0eTdv3EqYrBXNB_NjXmGn0Tx3",
    database: "da1dqis9usm2ja",
    port: "5432"
  )
end