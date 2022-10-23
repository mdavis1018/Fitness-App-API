# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(
  name: "Marcus",
  email: "marcus@test.com",
  password: "password",
  height: 75,
  weight: 185,
  image_url: "https://preview.redd.it/l6yqa9ixu7k31.jpg?width=640&crop=smart&auto=webp&s=32f14e8ce2937c5efb62538bfff359e587f83df5",
)

User.create(
  name: "Tom",
  email: "tom@test.com",
  password: "password",
  height: 70,
  weight: 170,
)

User.create(
  name: "Phil",
  email: "phil@test.com",
  password: "password",
  height: 80,
  weight: 190,
)

Workout.create(
  title: "Chest Day",
  user_id: 1,
)

Workout.create(
  title: "Arm Day",
  user_id: 2,
)

Excercise.create(
  name: "Bench Press", 
  description: "To grow your chest", excercise_category_id: 1,
  image_url: "https://thumbs.gfycat.com/ClearHalfHoatzin-size_restricted.gif"
)
Excercise.create(name: "Dumbell Fly",
  description: "To grow your chest", 
  excercise_category_id: 1,
image_url: "https://www.fitboot.com/wp-content/uploads/2022/08/Dumbbell-Fly.gif" )

Excercise.create(name: "Incline Bench Press",
  description: "To grow your chest", 
  excercise_category_id: 1,
image_url: "https://i0.wp.com/www.strengthlog.com/wp-content/uploads/2020/03/Incline-Bench-Press.gif?resize=600%2C600&ssl=1")

Excercise.create(name: "Pushups",
  description: "To grow your chest", 
  excercise_category_id: 1,
image_url: "https://media3.giphy.com/media/7YCC7PTNX2TOhJQ6aW/200.gif" )


  Excercise.create(name: "Bicep Curls",
    description: "To grow your biceps", 
    excercise_category_id: 3,
  image_url: "https://media0.giphy.com/media/6M4ZmZ4ZG6gk4PJnat/200.gif")

    Excercise.create(name: "Hammer curls",
      description: "To grow your biceps", 
      excercise_category_id: 3,
    image_url: "https://i.imgur.com/je0hPqo.gif" )

    Excercise.create(name: "Tricep Push Downs",
      description: "To grow your triceps", 
      excercise_category_id: 3,
    image_url: "https://i.makeagif.com/media/4-03-2016/9byy6n.gif")

    Excercise.create(name: "Dips",
      description: "To grow your triceps", 
      excercise_category_id: 3,
    image_url: "https://j.gifs.com/Jy81qK.gif")

    Excercise.create(name: "Overhead press",
      description: "To grow your shoulders", 
      excercise_category_id: 2,
    image_url: "https://hips.hearstapps.com/ame-prod-menshealth-assets.s3.amazonaws.com/main/assets/how-to-do-the-military-press.gif?resize=480:*")

    Excercise.create(name: "Lateral Raises",
      description: "To grow your shoulders", 
      excercise_category_id: 2,
    image_url: "https://c.tenor.com/rogbjO9DVF8AAAAC/standing-lateral-raise-lateral-raise.gif")


    Excercise.create(name: "Lat Pull-downs",
      description: "To grow your shoulders", 
      excercise_category_id: 4,
    image_url: "https://cdn.shopify.com/s/files/1/0250/0362/2496/files/1312.gif?v=1644918241")

    Excercise.create(name: "Bent-Over rows",
      description: "To grow your shoulders", 
      excercise_category_id: 4,
    image_url: "https://media2.giphy.com/media/UUn6oTupFoo0T9g6jS/giphy.gif")


    Excercise.create(name: "Quad Extensions",
      description: "To grow your quads", 
      excercise_category_id: 5,
    image_url: "https://thumbs.gfycat.com/CalculatingGoldenHarpseal-max-1mb.gif")

    Excercise.create(name: "Leg Press",
      description: "To grow your quads", 
      excercise_category_id: 5,
    image_url: "https://c.tenor.com/viwfOn4oRCcAAAAC/leg-press-workout.gif")

    Excercise.create(name: "Squats",
      description: "To grow your glutes", 
      excercise_category_id: 6,
    image_url: "https://media3.giphy.com/media/W5gFEeJmRhvElyatmF/giphy.gif")

    Excercise.create(name: "Hip Raise",
      description: "To grow your glutes", 
      excercise_category_id: 6,
    image_url: "https://c.tenor.com/pM6vr8YZeuwAAAAC/hip-thrust-workout.gif")

    Excercise.create(name: "Calf Raises",
      description: "To grow your calves", 
      excercise_category_id: 7,
    image_url: "https://fitnessprogramer.com/wp-content/uploads/2021/02/Dumbbell-Calf-Raise.gif")

    Excercise.create(name: "Seated Calf Raises",
      description: "To grow your calves", 
      excercise_category_id: 7,
    image_url: "https://www.strengthlog.com/wp-content/uploads/2020/03/calf-raise-seated.gif")


    