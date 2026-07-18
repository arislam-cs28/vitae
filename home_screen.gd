extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$QuickstartScreen.show()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _on_user_pressed() -> void:
	get_tree().change_scene_to_file("res://user/profile.tscn")

func _on_options_pressed() -> void:
	get_tree().change_scene_to_file("res://user/options.tscn")

func _on_resources_pressed() -> void:
	get_tree().change_scene_to_file("res://user/resources/resources.tscn")

func _on_study_pressed() -> void:
	get_tree().change_scene_to_file("res://study/study.tscn")

func _on_virtual_pet_pressed() -> void:
	get_tree().change_scene_to_file("res://pet/pet.tscn")

func _on_bot_pressed() -> void:
	get_tree().change_scene_to_file("res://bot/bot.tscn")

func _on_quickstart_pressed() -> void:
	$QuickstartScreen.show()
