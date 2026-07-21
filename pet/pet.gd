extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$RichTextLabel.text = "Cat-alase is here to catalyze a summary of your lab session! \n
	- Your Motivation: " + UserStats.study_motivation + "
	- Your Interest: " + UserStats.interest + "
	- Questions Asked to Vitae Today: " + str(UserStats.questions_asked) + "
	- Interactions with Vitae Today: " + str(UserStats.interactions) + "
	- Flashcards Today: " + str(UserStats.flashcards)

func _on_return_pressed() -> void:
	get_tree().change_scene_to_file("res://home_screen.tscn")
	
