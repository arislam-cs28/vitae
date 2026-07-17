extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Options opened")
	$QScreen.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_return_pressed() -> void:
	get_tree().change_scene_to_file("res://home_screen.tscn")


func _on_sfx_no_pressed() -> void:
	UserStats.play_sfx = false
	print(UserStats.play_sfx) # works

func _on_sfx_yes_pressed() -> void:
	UserStats.play_sfx = true
	print(UserStats.play_sfx) # works


func _on_music_yes_pressed() -> void:
	UserStats.play_bgm = true
	AudioConfig.get_node("BGM").play()

func _on_music_no_pressed() -> void:
	UserStats.play_bgm = false
	AudioConfig.get_node("BGM").stop()


func _on_reset_pressed() -> void:
	$QScreen.show()

func _on_leave_pressed() -> void:
	UserStats.play_bgm = true
	UserStats.play_sfx = true
	get_tree().quit()

func _on_stay_pressed() -> void:
	$QScreen.hide()
