insight1 = Insight.create(user_id: 1, body: "Acts as taggable is a great gem to try out to add tags to your website")
insight2 = Insight.create(user_id: 1, body: "Read POODR 3 times and I think I'm finally about 10% to understanding what Sandi Metz is talking about")
insight3 = Insight.create(user_id: 1, body: "The bash operator is the way to go with find_and_create_by when you want to see what records are failing")

insight1.tag_list = "ActiveRecord, Gems, Ruby"
insight1.save

insight2.tag_list = "OOP, Objects, Ruby"
insight2.save

insight3.tag_list = "ActiveRecord, bash, SQL, seeding"
insight3.save
