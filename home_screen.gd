extends Control

# this script is complete.

var vitae_interact = [
	"I heard you like biology. Good luck memorizing enzymes at 3AM!",
	"I'm on my 3rd cup of coffee this morning, biologist. You're next!",
	"Research is the best until it's 3AM and you're dying. But it's chill.",
	"Wassup? Hope you get a good study sesh today. I'm gonna go nap.",
	"If you think this level of biology is hard, wait 'til organic chem.",
	"Huh, I'm drowsy. Aren't you? Maybe it's these fumes... nah. Can't be."
]

var randint = -1
var current_text = ""

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if UserStats.show_qs == 0:
		$QuickstartScreen.show()
		UserStats.show_qs += 1
	$EasterEgg.hide()

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

func _on_tex_button_pressed() -> void:
	randint = randi_range(0, 5)
	current_text = vitae_interact[randint]
	$EasterEgg/RichTextLabel.text = current_text
	$EasterEgg.show()

func _on_easter_egg_close_pressed() -> void:
	$EasterEgg.hide()
