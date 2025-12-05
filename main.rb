require_relative "./initializer"
require_relative "./species/good_dog"
require_relative "./species/human_being"
require_relative "./music/track"

sparky = GoodDog.new("Sparky")
sparky.speak("Hello, my name is #{sparky.name}")

fido = HumanBeing.new("Fido")
fido.speak("Hello, my name is #{fido.name}")

fido.update_job(Utils::Bug::Job.new_as_software_engineer())
fido.speak("Hello, my name is #{fido.name} and my job is #{fido.job.name}")

track = Music::Track.new("Bohemian Rhapsody", "Queen", 358)
puts track.title
puts track.artist
puts track.duration
track.play