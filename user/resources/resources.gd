extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Textbooks.hide()
	$Journals.hide()
	$Miscellaneous.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_return_pressed() -> void:
	get_tree().change_scene_to_file("res://home_screen.tscn")


func _on_tex_button_pressed() -> void:
	$Textbooks.show()


func _on_jour_button_pressed() -> void:
	$Journals.show()


func _on_misc_button_pressed() -> void:
	$Miscellaneous.show()


func _on_home_pressed() -> void:
	$Textbooks.hide()


func _on_jour_home_pressed() -> void:
	$Journals.hide()
