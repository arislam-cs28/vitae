extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Options opened")
	$QScreen.hide() # hiding the quit / reset screen


func _on_return_pressed() -> void: # back to the home page
	get_tree().change_scene_to_file("res://home_screen.tscn")

# editing sfx
func _on_sfx_no_pressed() -> void: # turns off the sfx by setting the variable to false
	UserStats.play_sfx = false
	print(UserStats.play_sfx) # works

func _on_sfx_yes_pressed() -> void: # turns the sfx on by setting variable to true
	UserStats.play_sfx = true
	print(UserStats.play_sfx) # works

# editing music
func _on_music_yes_pressed() -> void: # turns on music, same schematic as sfx
	UserStats.play_bgm = true
	AudioConfig.get_node("BGM").play()

func _on_music_no_pressed() -> void: # turns off music, same schematic as sfx
	UserStats.play_bgm = false
	AudioConfig.get_node("BGM").stop()

# resetting study session progress
func _on_reset_pressed() -> void:
	$QScreen.show()

# turns the variables back to their original state; progress reset
# reset once you click the respective button on $QScreen
func _on_leave_pressed() -> void:
	UserStats.play_bgm = true
	UserStats.play_sfx = true
	UserStats.study_motivation = "study"
	UserStats.interest = "biology"
	UserStats.questions_asked = 0
	UserStats.interactions = 0

func _on_stay_pressed() -> void:
	$QScreen.hide() # hiding the quit screen if you don't actually want to reset your progress
