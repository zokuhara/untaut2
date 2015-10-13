batman = User.create! username: "batman", email: "bruce@wayneenterprise.com", password: "12345678"
superman = User.create! username: "superman", email: "clark@dailyplanet.com", password: "12345678"
spiderman = User.create! username: "spiderman", email: "peter@dailybugle.com", password: "12345678"

general = Room.create room_name: "General"
super_power_problems = Room.create room_name: "#superpowerproblems"

Message.create room_id: 1, user: batman, body: "Hi guys!"
Message.create room_id: 1, user: superman, body: "hey bruce"
Message.create room_id: 1, user: batman, body: "don't call me that!"

Message.create room_id: 2, user: batman, body: "hi guys"
Message.create room_id: 2, user: batman, body: "My accountant said I made too much money this year"
Message.create room_id: 2, user: superman, body: "wtf bruce, money isn't a superpower"
Message.create room_id: 2, user: spiderman, body: "I know rite!"
