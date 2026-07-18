extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Advice.hide()
	$Experiences.hide()
	$Study.hide()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_return_pressed() -> void:
	get_tree().change_scene_to_file("res://home_screen.tscn")

func _on_leave_pressed() -> void:
	$Advice.hide()


func _on_lab_advice_pressed() -> void:
	$Advice.show()


func _on_study_motivation_pressed() -> void:
	$Study.show()


func _on_vitae_experiences_pressed() -> void:
	$Experiences.show()


func _on_go_pressed() -> void:
	$Experiences.hide()


func _on_away_pressed() -> void:
	$Study.hide()
